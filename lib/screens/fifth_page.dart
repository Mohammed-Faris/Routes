import 'package:flutter/material.dart';
import 'package:router_sample/constants.dart';

class Fifthpage extends StatelessWidget {
  const Fifthpage({super.key});

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
            const Text('This is Fifth Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, homePage, (route) => false);
              },
              child: const Text('Go to First Page'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go to Fourth Page'))
          ],
        ),
      ),
    );
  }
}
