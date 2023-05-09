import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceContainerWidget extends StatefulWidget {
  const ServiceContainerWidget({super.key, required this.serviceName, required this.iconPath, required this.onTap});

  final RxString serviceName;
  final RxString iconPath;
  final Function() onTap;

  @override
  State<ServiceContainerWidget> createState() => _ServiceContainerWidgetState();
}

class _ServiceContainerWidgetState extends State<ServiceContainerWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutSine,
        width: isHover ? 270 : 250,
        height: isHover ? 170 : 150,
        decoration: const BoxDecoration(
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
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 3),
              child: CircleAvatar(backgroundColor: Colors.transparent, radius: 16, child: Image.asset(widget.iconPath.value)),
            ),
            Text(
              widget.serviceName.value,
              style: const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'SignikaNegative'),
            ),
          ],
        ),
      ),
    );
  }
}
