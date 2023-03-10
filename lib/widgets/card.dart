import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardContainer extends StatelessWidget {
  CardContainer({super.key});

  final List<Map<String, String>> cardDetails = [
    {
      'type': 'Family',
      'amount': '\$4,545.00',
      'cardNumber': '**7709',
      'date': '06/27',
    },
    {
      'type': 'Salary',
      'amount': '\$3,764.00',
      'cardNumber': '**6609',
      'date': '04/27',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      height: 186,
      child: ListView.builder(
        itemCount: cardDetails.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(
              top: 25,
              left: 15,
              right: 10,
              bottom: 20,
            ),
            margin: EdgeInsets.only(right: 20),
            width: 161,
            height: 186,
            decoration: BoxDecoration(
              color: Color.fromRGBO(156, 156, 156, 1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'VISA',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Icon(Icons.more_vert_rounded),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardDetails[index]['type'] as String,
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(83, 83, 83, 1)),
                    ),
                    Text(
                      cardDetails[index]['amount'] as String,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardDetails[index]['cardNumber'] as String,
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      cardDetails[index]['date'] as String,
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
