import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Models/picture_day_model.dart';

Widget datatext() {
  String text =
      "La imagen del dia de hoy ${getDate().elementAt(2)} de ${getDate().elementAt(1)} Es:   ";
  return Center(
    child: Text(
      text,
      style: GoogleFonts.anton(
          fontStyle: FontStyle.normal, fontSize: 25.0, color: Colors.white),
      textAlign: TextAlign.center,
    ),
  );
}

Widget imgtextinfo(PictureDmodel pictureData) {
  String text1 = pictureData.title;
  String text2 = "\nEsta imagen pertenece a:\n ${pictureData.copyright}";

  return Center(
    child: Column(
      children: [
        Text(
          text1,
          style: GoogleFonts.trispace(
              fontStyle: FontStyle.normal,
              fontSize: 25.0,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          text2,
          style:
              GoogleFonts.trispace(fontStyle: FontStyle.normal, fontSize: 15.0),
          textAlign: TextAlign.center,
        )
      ],
    ),
  );
}

List<String> getDate() {
  List<String> fecha = [];
  DateTime now = DateTime.now();
  fecha.add(now.year.toString());
  fecha.add(traslateMoth(now.month));
  fecha.add(now.day.toString());

  return fecha;
}

String traslateMoth(int month) {
  List<String> meses = [
    "Enero",
    "Febrero",
    "Marzo",
    "Abril",
    "Mayo",
    "Junio",
    "Julio",
    "Agosto",
    "Septiembre",
    "Octubre",
    "Noviembre",
    "Diciembre"
  ];

  return meses.elementAt(month - 1);
}



// Text(DateTime.now().year.toString());
// }