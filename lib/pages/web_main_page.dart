import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_scala/ClipPath/ClipPath.dart';
import 'package:product_scala/controllers/index_controller.dart';
import 'package:product_scala/widgets/CircularWidget.dart';

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

  @override
  Widget build(BuildContext context) {
    List circleItems = [
      //About Us Circle
      CirculeWidget(
        backgroundImage: 'assets/images/question_mark_image.png'.obs,
        indexItem: 0.obs,
        onTap: () {
          indexController!.index.value = 0;
          indexController!.selectedMenuIndex.value = 0;
        },
      ),
      const SizedBox(
        width: 30,
      ),
      //Categorry Circle
      CirculeWidget(
        backgroundImage: 'assets/images/category_image.png'.obs,
        indexItem: 1.obs,
        onTap: () {
          indexController!.index.value = 1;
          indexController!.selectedMenuIndex.value = 1;
        },
      ),
      const SizedBox(
        width: 30,
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
                //KULLANIM AMACI?????
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 6, 0, 89),
                    ),

                    //Clipper
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

                //Pages
                Obx(
                  () => Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.amber,
                    child: indexController!.getPages(),
                  ),
                ),
              ],
            ),

            //Company Logo
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

                  // Circle Avatar Calls
                  SizedBox(
                    width: 753,
                    height: 40,
                    child: ListView.builder(
                      itemBuilder: (context, index) => circleItems[index],
                      itemCount: circleItems.length,
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
