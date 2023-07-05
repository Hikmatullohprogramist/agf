import 'package:agf/screens/info_screen/info_screen.dart';
import 'package:agf/widgets/home_screen_card.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final String title;

  const CategoryScreen({super.key, required this.title});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<String> nameList = [
    "1 urug’ pallalilar",
    "2 urug’ pallalilar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
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
                            builder: (context) =>   InfoScreen(title: nameList[index]),
                          ),
                        );
                      },
                    );
                  },
                ),
              )),
        ),
      ),
    );
    //   DefaultTabController(
    //   length: 4,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: Text(widget.title ?? ""), // ignore: dead_null_aware_expression
    //     ),
    //     body:   const Column(
    //       children: [
    //         TabBar(
    //           tabs: [
    //             Tab(text: "TAB BAR "),
    //             Tab(text: "TAB BAR "),
    //             Tab(text: "TAB BAR "),
    //             Tab(text: "TAB BAR "),
    //
    //
    //           ],
    //         ),
    //         Expanded(
    //           child: TabBarView(
    //             children: [
    //               Center(
    //                 child: Text("HI!"),
    //               ),
    //               Center(
    //                 child: Text("EEY!"),
    //               ),
    //               Center(
    //                 child: Text("HELLO!"),
    //               ),
    //               Center(
    //                 child: Text("GOOD BYE!"),
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
