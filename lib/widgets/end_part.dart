import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EndPart extends StatelessWidget {
  const EndPart({super.key});

  Widget chartBar(double height, Color colr, String month) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: height,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: colr,
          ),
        ),
        SizedBox(height: 6),
        Text(month),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
        bottom: 10,
        left: 15,
      ),
      height: 163,
      width: 355,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Yealy Stats',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'March',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 10),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'View',
                ),
              )
            ],
          ),
          Row(
            children: [
              chartBar(50, Color.fromRGBO(217, 217, 217, 1), 'Jan'),
              SizedBox(width: 8),
              chartBar(80, Color.fromRGBO(217, 217, 217, 1), 'Feb'),
              SizedBox(width: 8),
              chartBar(60, Color.fromRGBO(112, 0, 255, 0.75), 'Mar'),
              SizedBox(width: 8),
              chartBar(90, Color.fromRGBO(217, 217, 217, 1), 'Apr'),
              SizedBox(width: 8),
              chartBar(50, Color.fromRGBO(217, 217, 217, 1), 'May'),
              SizedBox(width: 8),
            ],
          )
        ],
      ),
    );
  }
}
