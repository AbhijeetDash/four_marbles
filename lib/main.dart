import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:four_marbles/bloc/bloc.game.dart';
import 'package:four_marbles/bloc/states/state.game.dart';
import 'package:four_marbles/services/service.engine.dart';
import 'package:four_marbles/services/util.dart';
import 'package:four_marbles/theme.dart';
import 'package:get_it/get_it.dart';
import 'pages/pages.dart';

GetIt locator = GetIt.instance;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void _registerSingletons(){
    final EngineServiceImpl engineService = EngineServiceImpl();
    locator.registerSingleton<EngineService>(engineService);
  }

  @override
  void initState() {
    _registerSingletons();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GameBloc(InitialGameState()))
      ],
      child: MaterialApp(
        title: 'Four Marbles',
        theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        home: const DashboardPage(),
      ),
    );
  }
}
