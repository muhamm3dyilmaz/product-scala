import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ClipPath/pointerClipper.dart';
import '../Controller/index.dart';

//sol menu içindeki circleavatar widgeti
class CirculeWidget extends StatefulWidget {
  const CirculeWidget({
    Key? key,
    required this.indexItem,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  final RxInt indexItem;
  final Function() onTap;
  final RxString imageUrl;

  @override
  State<CirculeWidget> createState() => _CirculeWidgetState();
}

class _CirculeWidgetState extends State<CirculeWidget> {
  IndexController? indexController;
  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      (() => InkWell(
            onTap: widget.onTap,
            child: Row(
              children: [
                // ClipPath(
                //   // clipper: PointerClipper(),
                //   child: widget.indexItem == indexController!.index
                //       ? Container(
                //           width: 15,
                //           height: 30,
                //           decoration: const BoxDecoration(
                //               gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                //             Color(0xff2d26333),
                //             Color.fromARGB(241, 215, 82, 25),
                //           ])),
                //         )
                //       : Container(
                //           width: 15,
                //           height: 30,
                //           color: Colors.transparent,
                //         ),
                // ),
                const SizedBox(
                  width: 5,
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: widget.indexItem == indexController!.index ? Colors.white.withOpacity(0.6) : Colors.transparent,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    child: Opacity(
                      opacity: 0.7,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        radius: 20,
                        onTap: widget.onTap,
                        hoverColor: Colors.white.withOpacity(0.7),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          backgroundImage: NetworkImage(widget.imageUrl.value),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
