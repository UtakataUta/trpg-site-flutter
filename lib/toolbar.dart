import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget with PreferredSizeWidget {
  final TextTheme textTheme;
  ToolBar(this.textTheme, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/about');
          },
          child: Text('About', style: textTheme.bodyMedium),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/characters');
          },
          child: Text('Characters', style: textTheme.bodyMedium),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/scenarios');
          },
          child: Text('Scenarios', style: textTheme.bodyMedium),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/links');
          },
          child: Text('Links', style: textTheme.bodyMedium),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
