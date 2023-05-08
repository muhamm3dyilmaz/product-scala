import 'package:flutter/material.dart';

class ProductAddPage extends StatefulWidget {
  const ProductAddPage({super.key});

  @override
  State<ProductAddPage> createState() => _ProductAddPageState();
}

class _ProductAddPageState extends State<ProductAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("ÜRÜN EKLE"),
      ),
    );
  }
}
