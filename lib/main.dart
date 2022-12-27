import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '泡沫のTRPG倉庫',
      theme: ThemeData(fontFamily: 'Zen_Kaku_Gothic_Antique'),
      home: const AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // device size
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: deviceWidth * 0.95,
          height: deviceHeight * 0.95,
          child: Card(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  BeginSection(),
                  ExpSection(),
                  BooksSection(),
                  CreateSection(),
                  ToolSection(),
                  LastSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BeginSection extends StatelessWidget {
  const BeginSection({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Text.rich(
      TextSpan(
        text: 'ご挨拶\n',
        style: textTheme.titleLarge,
        children: <TextSpan>[
          TextSpan(
            text: 'こんにちは。泡沫と申します。このサイトは私のTRPGに関する情報をまとめたものです。\n',
            style: textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class ExpSection extends StatelessWidget {
  const ExpSection({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Text.rich(
      TextSpan(
        text: '経験値\n',
        style: textTheme.titleLarge,
        children: <TextSpan>[
          TextSpan(
            text: '始めたばかりでまだまだひよっこですが、楽しく遊んでいます。PL中心ですが、KP・GMも挑戦中です。',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: 'ココフォリアとDiscordを使ったボイセがメインですが、オフセも経験あります。\n',
            style: textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class BooksSection extends StatelessWidget {
  const BooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Text.rich(
      TextSpan(
        text: '所持ルルブ\n',
        style: textTheme.titleLarge,
        children: <TextSpan>[
          TextSpan(
            text: '・CoC6版\n',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: '・インセイン (基本/デッドループ/SCP)\n',
            style: textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class CreateSection extends StatelessWidget {
  const CreateSection({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Text.rich(
      TextSpan(
        text: '創作\n',
        style: textTheme.titleLarge,
        children: <TextSpan>[
          TextSpan(
            text: 'イラストを描くのが好きなので、立ち絵や卓中の出来事をイラストとして描いたりします。',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: 'Live2Dも好きなので、たまに立ち絵を動かしたり、動画を作ったりしています。\n',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: 'また、ちょっとだけプログラミングができるので、このWebサイトも頑張って作りました。',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: 'バグやエラーがあれば、お気軽にお知らせいただけると嬉しいです。\n',
            style: textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class ToolSection extends StatelessWidget {
  const ToolSection({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Text.rich(
      TextSpan(
        text: '使用ツール・言語\n',
        style: textTheme.titleLarge,
        children: <TextSpan>[
          TextSpan(
            text: '・Clip Studio Paint\n',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: '・Ibis Paint\n',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: '・Live 2D\n',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: '・Flutter(Dart)\n',
            style: textTheme.bodyText1,
          ),
          TextSpan(
            text: '・C++\n',
            style: textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

class LastSection extends StatelessWidget {
  const LastSection({super.key});

  @override
  Widget build(BuildContext context) {
    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Text.rich(
      TextSpan(
        text: '最後に\n',
        style: textTheme.titleLarge,
        children: <TextSpan>[
          TextSpan(
            text: 'セッションのお誘いやTRPGのご依頼などがありましたら、TwitterのDMでご連絡ください。\n',
            style: textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
