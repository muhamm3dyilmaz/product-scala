import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_scala/widgets/service_container_widget.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
                          SizedBox(
                            height: 500,
                            width: 1000,
                            child: Padding(
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
                                          onTap: () {},
                                          serviceName: "Yüzükler".obs,
                                          iconPath: 'assets/images/diamond-ring.png'.obs,
                                        ),

                                        //Kolye Service Container
                                        ServiceContainerWidget(
                                          onTap: () {},
                                          serviceName: "Kolyeler".obs,
                                          iconPath: 'assets/images/necklace.png'.obs,
                                        ),
                                      ],
                                    ),
                                  ),

                                  //Hizmetler 2
                                  Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        //Yüzük Service Container
                                        ServiceContainerWidget(
                                          onTap: () {},
                                          serviceName: "Bileklikler".obs,
                                          iconPath: 'assets/images/bracelet.png'.obs,
                                        ),

                                        //Kolye Service Container
                                        ServiceContainerWidget(
                                          onTap: () {},
                                          serviceName: "Saatler".obs,
                                          iconPath: 'assets/images/watch.png'.obs,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //İletişim
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(height: 200, width: 768, color: Colors.black),
                            Container(height: 200, width: 768, color: Colors.grey),
                          ],
                        ),
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
            ],
          ),
        ),
      ),
    );
  }
}
