import 'package:flutter/material.dart';
import 'package:router_sample/constants.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Router demo'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Second Page'),
            Text(data),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  thirdPage,
                );
              },
              child: const Text('Go to third Page'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go to First Page'))
          ],
        ),
      ),
    );
  }
}
