import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_scala/controllers/index/index_controller.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    Key? key,
    required this.text,
    required this.text2,
    required this.image,
  }) : super(key: key);
  final RxString text;
  final RxString text2;
  final RxString image;
  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  IndexController? indexController;
  bool isHover = false;
  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.fromLTRB(60, 40, 20, 20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {},
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: isHover ? Colors.black : const Color.fromARGB(255, 215, 215, 215), width: 1),
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 215, 215, 215),
            ),
            width: 350,
            height: 510,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                  ),
                  height: 390,
                  width: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.image.value,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3, bottom: 3, left: 5),
                  child: Text(
                    widget.text.value,
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    widget.text2.value,
                    style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
