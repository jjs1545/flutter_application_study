import 'package:flutter/material.dart';
import 'package:flutter_application_study/pages/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page2'),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Page3(),
              ),
            );
          },
          child: const Text('next page3'),
        ),
      ),
    );
  }
}
