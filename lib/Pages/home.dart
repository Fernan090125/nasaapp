import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/home/picturebuilder.dart';
import '../Widgets/home/textinfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomepageState();
}

class HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 590,
      width: 400,
      margin:
          const EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.lightBlue),
          child: Column(
            children: [datatext(), pictureBuilder()],
          )),
    );
  }
}
