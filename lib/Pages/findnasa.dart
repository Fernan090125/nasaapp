import 'package:flutter/material.dart';

import '../Widgets/home/picturebuilder.dart';
import '../Widgets/home/textinfo.dart';

class NasaFinder extends StatefulWidget {
  const NasaFinder({Key? key}) : super(key: key);

  @override
  State<NasaFinder> createState() => NasaFinderState();
}

class NasaFinderState extends State<NasaFinder> {
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
