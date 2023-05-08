import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_scala/pages/about_us_page.dart';
import 'package:product_scala/pages/necklace_page.dart';
import 'package:product_scala/pages/product_add_page.dart';
import 'package:product_scala/pages/ring_page.dart';
import 'package:product_scala/pages/watch_page.dart';
import 'package:product_scala/pages/wristband_page.dart';

class IndexController extends GetxController {
  RxInt index = 0.obs;
  RxInt selectedMenuIndex = 0.obs;

  RxInt gecis = 0.obs;

  List<Widget> menu = const [
    AboutUsPage(),
    RingPage(),
    NecklacePage(),
    WristbandPage(),
    WatchPage(),
    ProductAddPage(),
  ];

  Widget getPages() {
    return menu[selectedMenuIndex.value];
  }
}
