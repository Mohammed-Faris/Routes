import 'package:flutter/material.dart';

import '../constants.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
            const Text('This is Home Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, secondPage,
                    arguments: {'data': 'Hello World!'});
              },
              child: const Text('Go to Second Page'),
            )
          ],
        ),
      ),
    );
  }
}
