import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:product_scala/ClipPath/ClipPath.dart';
import 'package:product_scala/Controller/index.dart';
import 'package:product_scala/Widget/CircularWidget.dart';

class WebMainPage extends StatefulWidget {
  const WebMainPage({super.key});

  @override
  State<WebMainPage> createState() => _WebMainPageState();
}

class _WebMainPageState extends State<WebMainPage> {
  IndexController? indexController;
  Color splash = const Color(0xFF2D2655);
  @override
  void initState() {
    super.initState();
    indexController = Get.put(IndexController(), tag: "index");
  }

  Widget build(BuildContext context) {
    List itemler = [
      CirculeWidget(
        imageUrl: "https://www.shutterstock.com/image-vector/gamer-mascot-logo-streamer-esport-260nw-1683249331.jpg".obs,
        indexItem: 0.obs,
        onTap: () {
          indexController!.index.value = 0;
          indexController!.selectedMenuIndex.value = 0;
        },
      ),
      const SizedBox(
        width: 30,
      ),
      CirculeWidget(
          imageUrl: "https://media.istockphoto.com/id/1182383458/tr/vekt%C3%B6r/gamer-esport-maskotu-logo-tasar%C4%B1m.jpg?s=612x612&w=0&k=20&c=AjpWM3GkWSNl24Xb9E7h8dp7QmCdlYJm8EFf_9pylDU=".obs,
          indexItem: 1.obs,
          onTap: () {
            indexController!.index.value = 1;
            indexController!.selectedMenuIndex.value = 1;
          }),
      const SizedBox(
        width: 30,
      ),
      CirculeWidget(
          imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQF7bnTUsKlMLRaZG_AEx0MU8XCH9ZxcptiQ&usqp=CAU".obs,
          indexItem: 2.obs,
          onTap: () {
            indexController!.index.value = 2;
            indexController!.selectedMenuIndex.value = 2;
          }),
      const SizedBox(
        width: 30,
      ),
      CirculeWidget(
          imageUrl:
              "https://media.istockphoto.com/id/1320799591/vector/game-on-neon-game-controller-or-joystick-for-game-console-on-blue-background.jpg?s=612x612&w=0&k=20&c=CbxRq6ctP5Ta1QLu18UMtvgJf4D-zFpTMm0Rz14_Gy0="
                  .obs,
          indexItem: 3.obs,
          onTap: () {
            indexController!.index.value = 3;
            indexController!.selectedMenuIndex.value = 3;
          }),
      const SizedBox(
        width: 30,
      ),
      CirculeWidget(
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJp5Yrs5nd6TH_19CH2sjXERog11DG5OAn5Q&usqp=CAU".obs,
        indexItem: 4.obs,
        onTap: () {
          indexController!.index.value = 4;
          indexController!.selectedMenuIndex.value = 4;
        },
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 6, 0, 89),
                    ),
                    child: ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        width: 753,
                        height: 60,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xFF59479e),
                              Color(0xFF836FAF),
                            ],
                            tileMode: TileMode.mirror,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.amber,
                ),
              ],
            ),
            Positioned(
              right: 20,
              left: 20,
              child: Row(
                children: [
                  const Opacity(
                    opacity: 0.7,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXQ08g2uI7XskFyHtGggLPHfKOSY6W1ywuFg&usqp=CAU"),
                    ),
                  ),

                  const SizedBox(width: 500),
                  //circle avatarımı çağırdığım kısım

                  SizedBox(
                    width: 753,
                    height: 40,
                    child: ListView.builder(
                      itemBuilder: (context, index) => itemler[index],
                      itemCount: itemler.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
