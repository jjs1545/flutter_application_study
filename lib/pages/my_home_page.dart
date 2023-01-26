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
      appBar: AppBar(
        title: const Text('Flutter My App Bar'),
      ),

      /// 자주 사용되는 버튼 ElevatedButton, OutlinedButton, TextButton, GestureDetector
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              print('ElevatedButton');
            },
            onLongPress: () {
              print('ElevatedButton onLongPres`s!');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
            ),
            child: const Text('ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('OutlinedButton'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('TextButton'),
          ),
          GestureDetector(
            onTap: () {},
            onTapDown: (detail) {
              print(
                  'GestureDetector ${detail.kind} ! ${detail.globalPosition}');
            },
            child: const Text('GestureDetector'),
          ),
        ],
      ),
    );
  }
}
