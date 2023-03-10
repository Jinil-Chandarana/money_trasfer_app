import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/card.dart';
import '../widgets/persons.dart';

class MoneyTreansferScreen extends StatelessWidget {
  const MoneyTreansferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money transfer'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 125,
                width: 350,
                //color: Color.fromARGB(199, 100, 0, 230),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(199, 100, 0, 230),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Money transfer statistics',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'You sent 6% more money this month than last month',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 54,
                      width: 54,
                      margin: EdgeInsets.only(right: 18, left: 4),
                      //color: Colors.amber,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color.fromRGBO(217, 217, 217, 1),
                      ),
                      child: Icon(Icons.compare_arrows_rounded),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Select person',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Persons(
                siz: 100,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Select Card',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                child: CardContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
