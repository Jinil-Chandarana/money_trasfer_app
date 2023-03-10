import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:money_transfer_app/widgets/mid_part.dart';

import '../widgets/end_part.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Adriana'),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.menu_rounded),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: 360,
                padding: EdgeInsets.only(
                  top: 40,
                  bottom: 20,
                  right: 20,
                  left: 20,
                ),
                //color: Color.fromARGB(199, 100, 0, 230),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(199, 100, 0, 230),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your Wallet',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 40,
                        ),
                      ],
                    ),
                    Container(
                      width: 188,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Balance | ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            '25,650',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MidPart(),
              SizedBox(
                height: 20,
              ),
              EndPart(),
            ],
          ),
        ),
      ),
    );
  }
}
