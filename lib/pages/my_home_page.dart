import 'package:flutter/material.dart';

/// Extract Widget
/// Widget 이름 앞에 _Widget으로 변경 시 private 형으로 변경
class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Ctrl+i -> 속성보기
      appBar: AppBar(title: const Text('Flutter My App Bar')),

      /// Container -> div 역할
      body: Container(
        color: Colors.yellow,

        /// alignment -> 컨테이너 전체에 적용(Container에 자식이 없는것 처럼 적용)
        alignment: Alignment.center,

        /// padding -> 안쪽 여백, 좌, 우 공백 조절
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),

        /// padding -> 바깥 여백, 좌, 우 공백 조절
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 50,
        ),
        width: 100,
        height: 300,
        child: const Text('Flutter My Home Page'),
      ),
    );
  }
}
