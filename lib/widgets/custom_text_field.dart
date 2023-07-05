import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final Widget? suffix;
  final Widget? preffix;
  const CustomTextField(
      {super.key,
      this.labelText,
      required this.hintText,
      this.suffix,
      this.preffix,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.25, color: Color(0xFF005D2E)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          label: Text(labelText ?? ""),
          suffixIcon: suffix,
          prefixIcon: preffix,
          alignLabelWithHint: true,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );

  }
}
