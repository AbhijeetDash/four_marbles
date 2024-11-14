import 'package:flutter/material.dart';
import 'package:four_marbles/pages/page.game.dart';
import 'package:four_marbles/widgets/widget.customButton.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  4,
                  (index) => const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:  Color.fromARGB(255, 255, 139, 16),
                        ),
                      )),
            ),
            const SizedBox(height: 10),
            const Text('Four Marbles', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 30),
            WidgetCustomButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GamePage()));
              },
              icon: const Icon(Icons.play_arrow),
              text: 'Start Game',
            ),
            const SizedBox(height: 20),
            WidgetCustomButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_book),
              text: 'Tutorial',
            ),
            const SizedBox(height: 20),
            WidgetCustomButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
