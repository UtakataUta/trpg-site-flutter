import 'package:flutter/material.dart';
import 'toolbar.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Scaffold(
      appBar: ToolBar(textTheme),
      body: Text(
        "This is Characters page.",
        style: textTheme.bodySmall,
      ),
    );
  }
}
