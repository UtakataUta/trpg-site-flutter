import 'package:flutter/material.dart';
import 'links.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '泡沫のTRPG倉庫',
      theme: ThemeData(
          fontFamily: 'Zen_Kaku_Gothic_Antique',
          backgroundColor: const Color.fromRGBO(255, 248, 240, 1),
          primaryColor: const Color.fromRGBO(0, 100, 148, 1),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Color.fromRGBO(0, 100, 148, 1),
              fontFamily: 'Stick',
            ),
            bodySmall: TextStyle(
              color: Color.fromRGBO(0, 16, 17, 1),
            ),
            bodyMedium: TextStyle(
              color: Color.fromRGBO(255, 248, 240, 1),
            ),
          )),
      home: const AboutPage(),
      initialRoute: '/about',
      routes: {
        '/about': (context) => const AboutPage(),
        '/links': (context) => const LinksPage(),
      },
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

    // text theme
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/links');
            },
            child: Text('Links', style: textTheme.bodyMedium),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: deviceWidth * 0.95,
          height: deviceHeight * 0.95,
          child: Card(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              heightFactor: 0.9,
              child: SingleChildScrollView(
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
            style: textTheme.bodySmall,
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
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: 'ココフォリアとDiscordを使ったボイセがメインですが、オフセも経験あります。\n',
            style: textTheme.bodySmall,
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
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: '・インセイン (基本/デッドループ/SCP)\n',
            style: textTheme.bodySmall,
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
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: 'Live2Dも好きなので、たまに立ち絵を動かしたり、動画を作ったりしています。\n',
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: 'また、ちょっとだけプログラミングができるので、このWebサイトも頑張って作りました。',
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: 'バグやエラーがあれば、お気軽にお知らせいただけると嬉しいです。\n',
            style: textTheme.bodySmall,
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
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: '・Ibis Paint\n',
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: '・Live 2D\n',
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: '・Flutter(Dart)\n',
            style: textTheme.bodySmall,
          ),
          TextSpan(
            text: '・C++\n',
            style: textTheme.bodySmall,
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
            style: textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
