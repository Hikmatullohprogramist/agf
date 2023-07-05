import 'package:agf/screens/home_screen/home_screen.dart';
import 'package:agf/widgets/cusomt_button.dart';
import 'package:agf/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                  color: Color(0xff53B97C),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "AGF",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                        fontFamily: 'Fondamento',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Austere Growing Future",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Exo',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //login
              const CustomTextField(
                hintText: "E-mail / Telefon nomer",

              ),
              const SizedBox(
                height: 25,
              ),
              //parol
              CustomTextField(
                hintText: "Parol",
                suffix: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.green,
                    size: 25,
                  ),
                ),
              ),

              //kirish
              const SizedBox(
                height: 50,
              ),

             CustomButton(text: "Kirish", ontapped: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));})
            ],
          )),
    );
  }
}
