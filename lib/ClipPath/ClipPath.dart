import 'package:flutter/material.dart';

class Clippath extends StatefulWidget {
  const Clippath({
    super.key,
  });

  @override
  State<Clippath> createState() => _ClippathState();
}

class _ClippathState extends State<Clippath> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
    );
  }
}

//circle avatarlarımın bulunduğu alanın şekli
class MyClipper extends CustomClipper<Path> {
  MyClipper();

  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0706215, size.height * 0.0100000);
    path0.quadraticBezierTo(size.width * 0.0853107, size.height * 0.6980000, size.width * 0.1271186, size.height * 0.8100000);
    path0.cubicTo(size.width * 0.3019068, size.height * 0.8100000, size.width * 0.6870763, size.height * 0.8020000, size.width * 0.8618644, size.height * 0.8020000);
    path0.quadraticBezierTo(size.width * 0.8974576, size.height * 0.6980000, size.width * 0.9161017, size.height * 0.0100000);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
