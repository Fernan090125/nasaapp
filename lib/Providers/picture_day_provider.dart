import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/picture_day_model.dart';

class MoviesProvider {
  Future<PictureDmodel> getPictureDay() async {
    final url = Uri.parse(
        "https://api.nasa.gov/planetary/apod?api_key=yBL13ji6zkMghfAANLgUThWHKQc9a5XVL2cPv1tp");
    final response = await http.get(url);

    final decodedData = json.decode(response.body);

    final picture = PictureD.fromJsonList(decodedData);
    return picture.picture!;
  }
}
