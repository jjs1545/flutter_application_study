import 'package:flutter/material.dart';

/// Extract Widget
/// Widget 이름 앞에 _Widget으로 변경 시 private 형으로 변경
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// StatefulWidget 변경 시 priavte class 생성
class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Ctrl+i -> 속성보기
      appBar: AppBar(
        title: const Text('Flutter My App Bar'),
      ),

      /// Scaffold안의 속성 버튼 활용 -> 오른쪽 하단 버튼
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(
          Icons.plus_one,
          color: Colors.white,
        ),
      ),

      /// 자주 사용되는 버튼 ElevatedButton, OutlinedButton, TextButton, GestureDetector
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              /// setState메소드가 있어야 build 재실행
              setState(() {
                count++;
              });
            },
            child: const Text('plus'),
          ),
          Center(
            // width: MediaQuery.of(context).size.width,
            child: Text('$count'),
          ),
        ],
      ),
    );
  }
}
