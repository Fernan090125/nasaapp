class NasaFinder {
  NasaFindermodel? picture;

  NasaFinder();

  NasaFinder.fromJsonList(dynamic json) {
    picture = NasaFindermodel.fromJsonMap(json);
  }
}

class NasaFindermodel {
  late String copyright;
  late String date;
  late String explanation;
  late String hdurl;
  late String mediatype;
  late String serviceversion;
  late String title;
  late String url;

  NasaFindermodel(
    this.copyright,
    this.date,
    this.explanation,
    this.hdurl,
    this.mediatype,
    this.serviceversion,
    this.title,
    this.url,
  );

  NasaFindermodel.fromJsonMap(Map<String, dynamic> json) {
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
