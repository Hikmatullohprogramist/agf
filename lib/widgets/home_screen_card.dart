
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Function onTap;
  const CustomCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        width: 350,
        height: 155,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.green,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFFF5FAFF),
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
