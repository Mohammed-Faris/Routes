import 'package:flutter/material.dart';
import 'package:router_sample/constants.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
            const Text('This is Third Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, fourthPage);
              },
              child: const Text('Go to fourth Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go to Second Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, homePage, (route) => false);
              },
              child: const Text('Go to first Page'),
            )
          ],
        ),
      ),
    );
  }
}
