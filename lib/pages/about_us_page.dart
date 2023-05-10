import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_scala/controllers/index/index_controller.dart';
import 'package:product_scala/widgets/contact_us_widget.dart';
import 'package:product_scala/widgets/service_container_widget.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  IndexController? indexController;

  @override
  void initState() {
    indexController = Get.find(tag: "index");
    super.initState();
  }

  List imageUrls = [
    {"image_path": 'assets/images/carousel_1.jpeg'},
    {"image_path": 'assets/images/carousel_2.jpeg'},
    {"image_path": 'assets/images/carousel_3.jpeg'},
    {"image_path": 'assets/images/carousel_4.jpeg'},
    {"image_path": 'assets/images/carousel_5.jpeg'},
    {"image_path": 'assets/images/carousel_6.jpeg'},
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 253, 246),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Carousel Slider
              CarouselSlider(
                items: imageUrls
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: 650,
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        currentIndex = index;
                      },
                    );
                  },
                ),
              ),

              //Neden Silös Mücevherat
              Padding(
                padding: const EdgeInsets.only(top: 100.0),

                //Descriptions
                child: Column(
                  children: const [
                    //Title
                    Text(
                      "Neden Silös Mücevherat?",
                      style: TextStyle(color: Color.fromARGB(255, 33, 92, 255), fontSize: 45, fontFamily: 'SignikaNegative'),
                    ),

                    //Divider
                    SizedBox(
                      width: 250,
                      child: Divider(
                        color: Color.fromARGB(255, 33, 92, 255),
                      ),
                    ),

                    //Content
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, bottom: 40, left: 60, right: 60),
                      child: Text(
                        "Sektörde yıllarca hizmet etmiş ustalardan eğitim almış bir çırak olarak, kaliteden, hizmetten ve müşteri memnuniyetinden ödün vermeden, sektördeki eksikliklikleri görüp tamamlayan genç bir girişimci",
                        maxLines: 10,
                        style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'SignikaNegative'),
                      ),
                    ),
                  ],
                ),
              ),

              // Hizmetlerimiz
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                //Descriptions
                child: Column(
                  children: [
                    //Title
                    const Text(
                      "Hizmetlerimiz",
                      style: TextStyle(color: Color.fromARGB(255, 33, 92, 255), fontSize: 45, fontFamily: 'SignikaNegative'),
                    ),

                    //Divider
                    const SizedBox(
                      width: 250,
                      child: Divider(
                        color: Color.fromARGB(255, 33, 92, 255),
                      ),
                    ),

                    //Hizmetler
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 40, left: 60, right: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Müşterilerimize hizmet verdiğimiz ürün skalamız başlıca:",
                            maxLines: 10,
                            style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'SignikaNegative'),
                          ),

                          //Product Animated Containers
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 30, bottom: 30),
                            child: Column(
                              children: [
                                //Hizmetler 1
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      //Yüzük Service Container
                                      ServiceContainerWidget(
                                        onTap: () {
                                          indexController!.index.value = 1;
                                          indexController!.selectedMenuIndex.value = 1;
                                        },
                                        serviceName: "Yüzükler".obs,
                                        iconPath: 'assets/images/diamond-ring.png'.obs,
                                      ),

                                      //Kolye Service Container
                                      ServiceContainerWidget(
                                        onTap: () {
                                          indexController!.index.value = 2;
                                          indexController!.selectedMenuIndex.value = 2;
                                        },
                                        serviceName: "Kolyeler".obs,
                                        iconPath: 'assets/images/necklace.png'.obs,
                                      ),

                                      //Yüzük Service Container
                                      ServiceContainerWidget(
                                        onTap: () {
                                          indexController!.index.value = 3;
                                          indexController!.selectedMenuIndex.value = 3;
                                        },
                                        serviceName: "Bileklikler".obs,
                                        iconPath: 'assets/images/bracelet.png'.obs,
                                      ),

                                      //Kolye Service Container
                                      ServiceContainerWidget(
                                        onTap: () {
                                          indexController!.index.value = 4;
                                          indexController!.selectedMenuIndex.value = 4;
                                        },
                                        serviceName: "Saatler".obs,
                                        iconPath: 'assets/images/watch.png'.obs,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Contact Us
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 1536,
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Instagram
                            ContactUsWidget(
                              contactName: "silosmucevherat".obs,
                              iconPath: 'assets/images/instagram.png'.obs,
                            ),

                            //WhatsApp
                            ContactUsWidget(
                              contactName: "0 537 429 19 19".obs,
                              iconPath: 'assets/images/whatsapp.png'.obs,
                            ),

                            ContactUsWidget(
                              contactName: "silosmucevherat".obs,
                              iconPath: 'assets/images/facebook.png'.obs,
                            ),

                            //Mail
                            ContactUsWidget(
                              contactName: "sc.ilhann@gmail.com".obs,
                              iconPath: 'assets/images/gmail.png'.obs,
                            ),

                            const Text(
                              "by Cevher İlhan",
                              style: TextStyle(fontSize: 25, fontFamily: 'GreatVibes', color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  //Mayday Software
                  Container(
                    height: 14,
                    width: 1536,
                    color: const Color.fromARGB(255, 33, 92, 255),
                    child: const Center(
                      child: Text(
                        "Mayday Software Copyright © 2023",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
