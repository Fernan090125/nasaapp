// ignore_for_file: equal_elements_in_set

import 'package:flutter/material.dart';
import 'package:nasaapp/Widgets/home/textinfo.dart';

import '../../Models/picture_day_model.dart';
import '../../Providers/picture_day_provider.dart';

Widget pictureBuilder() {
  return FutureBuilder<PictureDmodel>(
    future: MoviesProvider().getPictureDay(),
    builder: (BuildContext context, AsyncSnapshot<PictureDmodel> snapshot) {
      if (snapshot.hasData) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 0.0, top: 20.0, right: 0.0, bottom: 15.0),
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                    placeholder: const AssetImage('assets/pop.jpg'),
                    fit: BoxFit.fill,
                    image: NetworkImage(snapshot.data!.url)),
              ),
            ),
            imgtextinfo(snapshot.data!)
          ],
        );
      }
      return const FadeInImage(
          placeholder: AssetImage('assets/pop.jpg'),
          image: AssetImage('assets/pop.jpg'));
    },
  );
}
