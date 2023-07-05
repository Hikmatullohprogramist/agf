// ignore_for_file: sized_box_for_whitespace

import 'package:agf/screens/category_screen/category_screen.dart';
import 'package:agf/widgets/home_screen_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> nameList = [
    "Ochiq urug’lilar",
    "Yopiq urug’lilar",
    "Noyob o’simliklar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: "Izlash",
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic,
                    color: Color(0xFF005D2E),
                  )),
              alignLabelWithHint: true,
              hintStyle: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 41,
                height: 40,
                decoration: ShapeDecoration(
                  color: const Color(0xFF005D2E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Image.asset("lib/assets/scan.png"),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bo’limlar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: nameList.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        title: nameList[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryScreen(
                                title: nameList[index],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
