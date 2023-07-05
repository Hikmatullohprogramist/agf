import 'package:flutter/material.dart';

import '../screens/home_screen/home_screen.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function ontapped;
  const CustomButton({super.key, required this.text, required this.ontapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        height: 50,
        decoration: ShapeDecoration(
          color: const Color(0xff005D2E),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
        ),
        child:  Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
