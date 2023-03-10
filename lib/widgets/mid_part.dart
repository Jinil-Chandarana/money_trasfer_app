import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:money_transfer_app/widgets/persons.dart';

class MidPart extends StatelessWidget {
  const MidPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Activities',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: 144,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(156, 156, 156, 1),
              ),
              child: Column(
                children: [
                  Container(
                    height: 66,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                    child: Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '\$15,500',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Monthly Salary',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(54, 54, 54, 1),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                    child: Text(
                      '\$120,500 / Year',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  height: 185 / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recent Transfers',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Persons(
                        siz: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 200,
                  height: 180 / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(229, 149, 104, 1),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        size: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Spotify',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Monthly Premium',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Today, 12:00 pm',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
