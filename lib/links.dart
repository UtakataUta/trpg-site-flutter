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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinkSection(
              'Twitter',
              CupertinoIcons.bubble_left_fill,
            ),
            LinkSection(
              'Privatter',
              Icons.lock,
            ),
            LinkSection(
              'fusetter',
              Icons.pets,
            ),
            LinkSection(
              'poipiku',
              CupertinoIcons.archivebox_fill,
            ),
            LinkSection(
              'GitHub',
              Icons.description,
            ),
          ],
        ),
      ),
    );
  }
}

class LinkSection extends StatelessWidget {
  LinkSection(this.title, this.icon, {super.key});

  final String title;
  final IconData icon;

  final Map<String, String> comments = {
    'Twitter': '大体ここにいる',
    'Privatter': 'ネタバレありFA',
    'fusetter': '感想や鳴き声',
    'poipiku': '立ち絵やFAの進捗',
    'GitHub': 'ソースコード置き場',
  };

  final Map<String, String> stringUris = {
    'Twitter': 'https://twitter.com/TRPG_utakata',
    'Privatter': 'https://privatter.net/u/TRPG_utakata',
    'fusetter': 'https://fusetter.com/u/TRPG_utakata',
    'poipiku': 'https://poipiku.com/3331719/',
    'GitHub': 'https://github.com/UtakataUta',
  };

  @override
  Widget build(BuildContext context) {
    // device size
    final double deviceWidth = MediaQuery.of(context).size.width;

    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Center(
      child: SizedBox(
        width: deviceWidth * 0.95,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(deviceWidth * 0.025),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: deviceWidth * 0.025),
                  child: Icon(
                    icon,
                    color: theme.primaryColor,
                  ),
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
                            style: textTheme.titleLarge!.copyWith(
                              fontFamily: 'MochiyPopPOne',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: deviceWidth * 0.01, bottom: 3),
                          child: Text.rich(
                            TextSpan(
                              text: comments[title],
                              style: textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text.rich(
                      TextSpan(
                        text: stringUris[title],
                        style: textTheme.bodySmall,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            final uri = Uri.parse(stringUris[title]!);
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
          ),
        ),
      ),
    );
  }
}
