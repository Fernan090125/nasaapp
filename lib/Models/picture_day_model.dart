class PictureD {
  PictureDmodel? picture;

  PictureD();

  PictureD.fromJsonList(dynamic json) {
    picture = PictureDmodel.fromJsonMap(json);
  }
}

class PictureDmodel {
  late String copyright;
  late String date;
  late String explanation;
  late String hdurl;
  late String mediatype;
  late String serviceversion;
  late String title;
  late String url;

  PictureDmodel(
    this.copyright,
    this.date,
    this.explanation,
    this.hdurl,
    this.mediatype,
    this.serviceversion,
    this.title,
    this.url,
  );

  PictureDmodel.fromJsonMap(Map<String, dynamic> json) {
    copyright = json['copyright'];
    date = json['date'];
    explanation = json['explanation'];
    hdurl = json['hdurl'];
    mediatype = json['media_type'];
    serviceversion = json['service_version'];
    title = json['title'];
    url = json['url'];
  }

  getImg() {
    if (url.isEmpty) {
      return 'https://images7.alphacoders.com/789/789020.png';
    } else {
      return url;
    }
  }
}
