import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  RxInt index = 0.obs;
  RxInt selectedMenuIndex = 0.obs;

  RxInt gecis = 0.obs;

  List<Widget> menu = [];

  Widget getRightPage() {
    return menu[selectedMenuIndex.value];
  }
}
//circleavatar widgetinin controllerı
