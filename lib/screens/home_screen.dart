import 'package:flutter/material.dart';

import 'money_transfer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to money transfer',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              //
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MoneyTreansferScreen()),
                );
              },
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
