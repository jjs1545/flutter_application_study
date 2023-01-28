// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        // home: const JusinHomePage(),
        home: const _ImageHomePage());
  }
}

class _ImageHomePage extends StatelessWidget {
  const _ImageHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// assets image
    /// Copy Relative Path -> assets\image\model3.jpg
    return Scaffold(
      appBar: AppBar(),

      /// 화면 overflow 발생시 사용하면 화면이 자동으로 스크롤 된다.
      /// pubspec.yami 파일에 이미지 폴더 경로를 입력해 준다.
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/image/model3.jpg'),
            Image.asset('assets/image/Tesla_fsd.gif'),
            Image.asset('assets/image/Elon.jpg'),
          ],
        ),
      ),
    );
  }
}
