import 'package:flutter/material.dart';

class PointerPath extends StatelessWidget {
  const PointerPath({super.key});
//sol menudeki cicleavatarlarımın seçildiğini gösteren border şeklim
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 8,
      decoration: const BoxDecoration(color: Colors.white),
      child: ClipPath(
        clipper: PointerClipper(),
      ),
    );
  }
}

class PointerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path1 = Path();
    path1.moveTo(size.width * 0.4900000, size.height * 0.9900000);
    path1.cubicTo(size.width * 0.0455000, size.height * 0.7020000, size.width * 0.1975000, size.height * 0.6300000, size.width * 0.1000000, size.height * 0.5100000);
    path1.quadraticBezierTo(size.width * 0.1310000, size.height * 0.3990000, size.width * 0.3200000, size.height * 0.2900000);
    path1.quadraticBezierTo(size.width * 0.1900000, size.height * 0.1720000, size.width * 0.2000000, size.height * 0.0900000);
    path1.quadraticBezierTo(size.width * 0.2805000, size.height * 0.0430000, size.width * 0.4900000, size.height * 0.0300000);
    path1.quadraticBezierTo(size.width * 0.6985000, size.height * 0.0430000, size.width * 0.8000000, size.height * 0.0900000);
    path1.quadraticBezierTo(size.width * 0.7965000, size.height * 0.1480000, size.width * 0.6900000, size.height * 0.2900000);
    path1.quadraticBezierTo(size.width * 0.8790000, size.height * 0.3840000, size.width * 0.9100000, size.height * 0.4900000);
    path1.cubicTo(size.width * 0.8050000, size.height * 0.6150000, size.width * 0.9490000, size.height * 0.7190000, size.width * 0.4900000, size.height * 0.9900000);
    path1.close();

    return path1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
