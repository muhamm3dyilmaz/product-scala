
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_scala/pages/about_us_page.dart';
import 'package:product_scala/pages/category_page.dart';

class IndexController extends GetxController {
  RxInt index = 0.obs;
  RxInt selectedMenuIndex = 0.obs;

  RxInt gecis = 0.obs;

  List<Widget> menu = const [
    AboutUsPage(),
    CategoryPage(),
  ];

  Widget getPages() {
    return menu[selectedMenuIndex.value];
  }
}
//circleavatar widgetinin controllerı
