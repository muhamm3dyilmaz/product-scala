import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
                        width: 1100,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: 600,
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

              // Neden Silös Mücevherat
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

                    //Grid View
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

                          //Product Containers
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 30, bottom: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 250,
                                    height: 150,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 197, 197, 197),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(255, 210, 210, 210),
                                          Color.fromARGB(255, 136, 136, 136),
                                        ],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(right: 3),
                                          child: Icon(
                                            Icons.menu_book_sharp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Yüzükler",
                                          style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'SignikaNegative'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(width: 250, height: 150, color: const Color.fromARGB(255, 197, 197, 197)),
                              ],
                            ),
                          ),

                          //Product Containers
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 30, bottom: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(width: 250, height: 150, color: const Color.fromARGB(255, 197, 197, 197)),
                                Container(width: 250, height: 150, color: const Color.fromARGB(255, 197, 197, 197)),
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
      ),
    );
  }
}
