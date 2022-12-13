import 'package:flutter/material.dart';
import 'package:pr5/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  final String text;
  final TextEditingController textController = TextEditingController();

  FirstPage({super.key, required this.text});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Введите текст'),
              controller: textController,
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(text: textController.text)));
              },
              child: const Text('Перейти на другой экран'),
            ),
          ],
        ),
      ),
    );
  }
}
