import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class About extends StatelessWidget {
  const About({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(child: PhotoView(imageProvider: AssetImage("assets/images/about.jpg"),)),
    );
  }
}