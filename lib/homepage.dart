import 'package:flutter/material.dart';

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
            height: 256,
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
                                borderRadius: BorderRadius.circular(28)
                              ),
                              child: Image.asset("assets/sms.png"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
