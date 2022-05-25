import 'package:flutter/material.dart';



class BABcustompainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white..style = PaintingStyle.fill;
    Path path = Path()..moveTo(10, 20);
    path.quadraticBezierTo(size.width*0.2, 0, size.width*0.5, 0);
    path.quadraticBezierTo(size.width*0.2, 0, size.width*0.5, 0);
   // path.arcToPoint(Offset.zero,radius: Radius.circular(0));
    path.quadraticBezierTo(size.width*0.8, 0, size.width*0.97, 20);
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// List<BottomNavigationBarItem> bottomNavBarItems = [
//   const BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
//   /// class for labels
//   const BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
//   const BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
//   // BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
// ];