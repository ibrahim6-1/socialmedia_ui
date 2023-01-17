import 'package:flutter/material.dart';

List story = [
  {"name": "Hikaye Ekle", "image": "assets/add.png"},
  {"name": "Sudenaz", "image": "assets/1.png"},
  {"name": "Havva", "image": "assets/2.png"},
  {"name": "İbrahim", "image": "assets/3.png"},
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 428,
            height: 295,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(42),
                    bottomRight: Radius.circular(42)),
                color: Color.fromARGB(255, 27, 26, 26)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(31),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/menu.png"),
                      Container(
                        width: 153,
                        height: 55,
                        decoration: BoxDecoration(
                            color: const Color(0xff2F2F2F),
                            borderRadius: BorderRadius.circular(28)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/notification.png"),
                            Container(
                              width: 73,
                              height: 49,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(28)),
                              child: Image.asset("assets/sms.png"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 130,
                  child: Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: story.length,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: 100,
                              height: 84,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(38),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color.fromARGB(255, 81, 142, 255),
                                    Color.fromARGB(255, 155, 92, 255)
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  width: 100,
                                  height: 84,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 66, 66, 66),
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 66, 66, 66),
                                        borderRadius: BorderRadius.circular(38),
                                      ),
                                      width: 75,
                                      height: 65,
                                      child: Image.asset(
                                          "${story[index]["image"]}"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "${story[index]["name"]}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "RobotoCondensed Pro"),
                            )
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
