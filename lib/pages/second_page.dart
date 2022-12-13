import 'package:flutter/material.dart';
import 'package:pr5/pages/first_page.dart';

class SecondPage extends StatelessWidget {
  final String text;
  final TextEditingController textController = TextEditingController();

  SecondPage({super.key, required this.text});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
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
                        FirstPage(text: textController.text)));
              },
              child: const Text('Перейти на другой экран'),
            ),
          ],
        ),
      ),
    );
  }
}
