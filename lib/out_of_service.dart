import 'package:flutter/material.dart';
import 'toolbar.dart';

class OutOfServicePage extends StatelessWidget {
  const OutOfServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Scaffold(
      appBar: ToolBar(textTheme),
      body: Center(
        child: Text(
          "このページは、現在工事中です。",
          style: textTheme.titleLarge,
        ),
      ),
    );
  }
}
