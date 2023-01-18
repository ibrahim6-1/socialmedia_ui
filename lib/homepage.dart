import 'package:flutter/material.dart';

List story = [
  {"name": "Hikaye Ekle", "image": "assets/add.png"},
  {"name": "Sudenaz", "image": "assets/1.png"},
  {"name": "Havva", "image": "assets/2.png"},
  {"name": "İbrahim", "image": "assets/3.png"},
];

List post = [
  {
    "name": "Enzel",
    "time": "21 hour ago",
    "image": "assets/img11.png",
    "imagepost": "assets/img1.png",
  },
  {
    "name": "Bahadır",
    "time": "18 hour ago",
    "image": "assets/img22.png",
    "imagepost": "assets/img2.png",
  },
  {
    "name": "Buğra",
    "time": "14 hour ago",
    "image": "assets/img33.png",
    "imagepost": "assets/img3.png",
  },
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
            height: 290,
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              width: 100,
                              height: 84,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(38),
                                gradient: const LinearGradient(
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
                            const SizedBox(height: 10),
                            Text(
                              "${story[index]["name"]}",
                              style: const TextStyle(
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
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: post.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(39)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Image.asset("${post[index]["imagepost"]}"),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 59,
                                            height: 59,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(38),
                                              gradient: const LinearGradient(
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 81, 142, 255),
                                                  Color.fromARGB(
                                                      255, 155, 92, 255)
                                                ],
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(2),
                                              child: Container(
                                                width: 53,
                                                height: 53,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 66, 66, 66),
                                                  borderRadius:
                                                      BorderRadius.circular(38),
                                                ),
                                                child: Image.asset(
                                                  "${post[index]["image"]}",
                                                  scale: 1.1,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${post[index]["name"]}",
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily:
                                                          "RobotoCondensed"),
                                                ),
                                                Text(
                                                  "${post[index]["time"]}",
                                                  style: const TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "RobotoCondensed Pro"),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: Colors.white
                                                    .withOpacity(0.2)),
                                            width: 57,
                                            height: 57,
                                            child: Image.asset(
                                                "assets/bookmark.png"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 161, right: 15),
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Column(
                                      children: [
                                        Image.asset("assets/share.png"),
                                        SizedBox(height: 30),
                                        Column(
                                          children: [
                                            Image.asset("assets/comment.png"),
                                            const Text(
                                              "261",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily:
                                                      "RobotoCondensed Pro"),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 30),
                                        Container(
                                          width: 65,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(28),
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: Colors.white
                                                      .withOpacity(0.6))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset("assets/like.png"),
                                              const Text(
                                                "6.1k",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontFamily:
                                                        "RobotoCondensed Pro"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 409,
                          height: 67,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 218, 218, 218)),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/1.png",
                                      scale: 2,
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      "Yorum yap ...",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontFamily: "RobotoCondensed Pro"),
                                    )
                                  ],
                                ),
                                Text("(261 Yorum)",  style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: "RobotoCondensed Pro"))
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  })))
        ],
      ),
    );
  }
}
