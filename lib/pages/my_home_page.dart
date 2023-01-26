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
        width: 500,
        height: 200,
        child: const Text('Flutter My Home Page'),
      ),
    );
  }
}
