import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          LinkSection(
            'Twitter',
            '大体ここにいる',
            'https://twitter.com/TRPG_utakata',
            CupertinoIcons.bubble_left_fill,
          ),
          LinkSection(
            'Privatter',
            'ネタバレありFA',
            'https://privatter.net/u/TRPG_utakata',
            Icons.lock,
          ),
          LinkSection(
            'fusetter',
            '感想や鳴き声',
            'https://fusetter.com/u/TRPG_utakata',
            Icons.pets,
          ),
          LinkSection(
            'poipiku',
            '立ち絵やFAの進捗',
            'https://poipiku.com/3331719/',
            CupertinoIcons.archivebox_fill,
          ),
          LinkSection(
            'GitHub',
            'ソースコード置き場',
            'https://github.com/UtakataUta',
            Icons.description,
          ),
        ],
      ),
    );
  }
}

class LinkSection extends StatelessWidget {
  const LinkSection(this.title, this.comment, this.stringUri, this.icon,
      {super.key});

  final String title;
  final String comment;
  final String stringUri;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Card(
      child: Row(
        children: [
          Icon(
            icon,
            color: theme.primaryColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text.rich(
                    TextSpan(
                      text: title,
                      style: textTheme.titleLarge,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: comment,
                      style: textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                  text: stringUri,
                  style: textTheme.bodySmall,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final uri = Uri.parse(stringUri);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        throw 'Could not launch $uri';
                      }
                    },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
