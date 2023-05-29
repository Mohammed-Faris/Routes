import 'package:flutter/material.dart';
import 'package:router_sample/constants.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

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
            const Text('This is Fourth Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, fifthPage);
              },
              child: const Text('Go to fifth Page'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go to third Page'))
          ],
        ),
      ),
    );
  }
}
