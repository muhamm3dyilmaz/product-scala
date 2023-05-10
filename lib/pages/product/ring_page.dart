import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_scala/widgets/CardWidget.dart';

class RingPage extends StatefulWidget {
  const RingPage({super.key});

  @override
  State<RingPage> createState() => _RingPageState();
}

class _RingPageState extends State<RingPage> {
  bool isHover = false;
  int currentPageIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0); // PageController'ı initState içinde başlatın ve ilk sayfayı belirleyin
  }

  @override
  void dispose() {
    _pageController?.dispose(); // PageController'ı dispose içinde atın
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //burdaki amaç her sayfa ayrı listede
    List<List<CardWidget>> CardItem = [
      [
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Halka Pırlantalı Nişan Yüzüğü '.obs, text2: 'Y345KC'.obs, image: 'assets/images/ring_img.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
      ],
      [
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'asdasd'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
      ],
      [
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'asdasd'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
        CardWidget(text: 'Tek Taş Baget Pırlanta Yüzük '.obs, text2: 'K380YU'.obs, image: 'assets/images/Ring.jpg'.obs),
      ]
    ];

    return Scaffold(
      body: Column(
        children: [
          //12 Card Widget den sonra 2. sayfaya geçiş
          Expanded(
            child: PageView.builder(
              itemCount: CardItem.length,
              controller: _pageController,
              itemBuilder: (context, pageIndex) {
                return GridView.count(
                  crossAxisCount: 3,
                  children: CardItem[pageIndex],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              CardItem.length,
              (index) => Container(
                margin: const EdgeInsets.all(8),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //2. sayfadayken 1. sayfaya dönmek için
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Background color
                ),
                onPressed: () {
                  if (currentPageIndex == 0) {
                    _pageController?.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 74, 74, 74),
                ),
              ),
              const SizedBox(width: 20),
              //sayfa geçişi
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Background color
                ),
                onPressed: () {
                  if (currentPageIndex < CardItem.length) {
                    _pageController?.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromARGB(255, 74, 74, 74),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
