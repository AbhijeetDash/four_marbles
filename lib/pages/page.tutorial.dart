import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown/flutter_markdown.dart';

class PageTutorial extends StatefulWidget {
  const PageTutorial({super.key});

  @override
  State<PageTutorial> createState() => _PageTutorialState();
}

class _PageTutorialState extends State<PageTutorial> {
  String markdownContent = '';

  @override
  void initState() {
    super.initState();
    _loadMarkdownFile();
  }

  Future<void> _loadMarkdownFile() async {
    final String content = await rootBundle.loadString('assets/tutorial.md');
    setState(() {
      markdownContent = content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Tutorial'),
      ),
      body: markdownContent.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Markdown(
              data: markdownContent,
              styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)),
            ),
    );
  }
}
