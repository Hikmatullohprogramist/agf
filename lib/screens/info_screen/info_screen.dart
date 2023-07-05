import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  final String title;

  const InfoScreen({super.key, required this.title});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    String? selectedItem = 'UZB';

    List<String> items = [
      'UZB',
      'ENG',
      'RU',
    ];
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    return Scaffold(
      backgroundColor: const Color(0xffF5FAFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
        ),
        actions: [
          Container(
            width: 70,
            height: 40,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.15, color: Color(0xFF005D2E)),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            child: Center(
              child: DropdownButton<String>(
                value: selectedItem,
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.green,
                ),
                elevation: 16,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                alignment: Alignment.center,
                underline: Container(),
                onChanged: (value) {
                  setState(() {
                    selectedItem = value;
                  });
                },
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: 350,
                height: 180,
                child: CarouselSlider(
                    items: imgList
                        .map(
                          (item) => Container(
                            decoration: ShapeDecoration(
                                color: Colors.black.withOpacity(0.25),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(item),
                                  fit: BoxFit.cover,
                                )),
                            // child: Center(
                            //   child: Image.network(
                            //     item,
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index, reason) {},
                      scrollDirection: Axis.horizontal,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.15, color: Color(0xFF005D2E)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const ExpansionTile(
                  childrenPadding: EdgeInsets.all(10), // remove default padding

                  title: Text("Morfologiyasi"),
                  children: [
                    Text(
                      "Urug`li qirqquloqlar tartibi — PteridospermaeUrug`li qirqquloqlar paleozoy erasida keng tarqalgan bo`lib, hozir qazilma holdagina uchraydigan o`simliklardir. Ular o`zining tashqi ko`rinishi bilan hozirgi daraxtsimon qirqquloqlarga o`xshash, lekin har xil sporali bo`lib, urug` yordamida ko`payishi bilan ulardan farq kilgan",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ), // marfologiya
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.15, color: Color(0xFF005D2E)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const ExpansionTile(
                  childrenPadding: EdgeInsets.all(10), // remove default padding

                  title: Text("Ichki tuzilishi"),
                  children: [
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ), //ichki tuzilishi
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.15, color: Color(0xFF005D2E)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const ExpansionTile(
                  childrenPadding: EdgeInsets.all(10), // remove default padding

                  title: Text("Fiziologiyasi"),
                  children: [
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ), //Fiziologiyasi
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.15, color: Color(0xFF005D2E)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const ExpansionTile(
                  childrenPadding: EdgeInsets.all(10), // remove default padding

                  title: Text("Kasalliklari va ularni davolash turlari"),
                  children: [
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ), //Kasalliklari va ularni davolash turlari
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.15, color: Color(0xFF005D2E)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const ExpansionTile(
                  childrenPadding: EdgeInsets.all(10), // remove default padding

                  title: Text("Dorivorlik xususiyatlari"),
                  children: [
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ), //Dorivorlik xususiyatlari
            ],
          ),
        ),
      ),
    );
  }
}

class DemoItem extends StatelessWidget {
  final String title;
  final String route;

  const DemoItem(this.title, this.route, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
