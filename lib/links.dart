import 'package:flutter/material.dart';
import 'toolbar.dart';

class LinksPage extends StatelessWidget {
  const LinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Scaffold(
      appBar: ToolBar(textTheme),
      body: Text(
        "This is Links page.",
        style: textTheme.bodySmall,
      ),
    );
  }
}
