import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '泡沫のTRPG倉庫',
      home: AboutPage(),
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
      body: Center(
        child: SizedBox(
          width: deviceWidth * 0.95,
          height: deviceHeight * 0.95,
          child: Card(
            child: Text.rich(
              TextSpan(
                text: 'ご挨拶\n',
                style: textTheme.titleLarge,
                children: <TextSpan>[
                  TextSpan(
                    text: 'こんにちは。泡沫と申します。このサイトは私のTRPGに関する情報をまとめたものです。\n',
                    style: textTheme.bodyText1,
                  ),
                  TextSpan(
                    text: '経験値\n',
                    style: textTheme.titleLarge,
                  ),
                  TextSpan(
                    text: '始めたばかりでまだまだひよっこですが、楽しく遊んでいます。PL中心ですが、KP・GMも挑戦中です。',
                    style: textTheme.bodyText1,
                  ),
                  TextSpan(
                    text: 'ココフォリアとDiscordを使ったボイセがメインですが、オフセも経験あります。\n',
                    style: textTheme.bodyText1,
                  ),
                  TextSpan(
                    text: '所持ルルブ\n',
                    style: textTheme.titleLarge,
                  ),
                  TextSpan(
                    text: '・CoC6版\n',
                    style: textTheme.bodyText1,
                  ),
                  TextSpan(
                    text: '・インセイン (基本/デッドループ/SCP)\n',
                    style: textTheme.bodyText1,
                  ),
                  TextSpan(
                    text: '創作\n',
                    style: textTheme.titleLarge,
                  ),
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
                  TextSpan(
                    text: '使用ツール・言語\n',
                    style: textTheme.titleLarge,
                  ),
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
                  TextSpan(
                    text: '最後に\n',
                    style: textTheme.titleLarge,
                  ),
                  TextSpan(
                    text: 'セッションのお誘いやTRPGのご依頼などがありましたら、TwitterのDMでご連絡ください。\n',
                    style: textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
