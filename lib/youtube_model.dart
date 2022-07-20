// To parse this JSON data, do
//
//     final youtube = youtubeFromJson(jsonString);

import 'dart:convert';

Youtube youtubeFromJson(String str) => Youtube.fromJson(json.decode(str));

String youtubeToJson(Youtube data) => json.encode(data.toJson());

class Youtube {
  Youtube({
    required this.hasError,
    required this.errorCode,
    this.errorMessage,
    this.errorDescription,
    required this.body,
  });

  final bool hasError;
  final int errorCode;
  final dynamic errorMessage;
  final dynamic errorDescription;
  final Body body;

  factory Youtube.fromJson(Map<String, dynamic> json) => Youtube(
        hasError: json["hasError"],
        errorCode: json["errorCode"],
        errorMessage: json["errorMessage"],
        errorDescription: json["errorDescription"],
        body: Body.fromJson(json["body"]),
      );

  Map<String, dynamic> toJson() => {
        "hasError": hasError,
        "errorCode": errorCode,
        "errorMessage": errorMessage,
        "errorDescription": errorDescription,
        "body": body.toJson(),
      };
}

class Body {
  Body({
    required this.id,
    required this.meta,
    required this.thumb,
    required this.videoQuality,
    required this.url,
  });

  final String id;
  final Meta meta;
  final String thumb;
  final List<String> videoQuality;
  final List<Url> url;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        id: json["id"],
        meta: Meta.fromJson(json["meta"]),
        thumb: json["thumb"],
        videoQuality: List<String>.from(json["video_quality"].map((x) => x)),
        url: List<Url>.from(json["url"].map((x) => Url.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "meta": meta.toJson(),
        "thumb": thumb,
        "video_quality": List<dynamic>.from(videoQuality.map((x) => x)),
        "url": List<dynamic>.from(url.map((x) => x.toJson())),
      };
}

class Meta {
  Meta({
    required this.title,
    required this.source,
    required this.duration,
    required this.tags,
    required this.subtitle,
  });

  final String title;
  final String source;
  final String duration;
  final String tags;
  final Subtitle subtitle;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        title: json["title"],
        source: json["source"],
        duration: json["duration"],
        tags: json["tags"],
        subtitle: Subtitle.fromJson(json["subtitle"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "source": source,
        "duration": duration,
        "tags": tags,
        "subtitle": subtitle.toJson(),
      };
}

class Subtitle {
  Subtitle({
    required this.token,
    required this.language,
  });

  final String token;
  final List<String> language;

  factory Subtitle.fromJson(Map<String, dynamic> json) => Subtitle(
        token: json["token"],
        language: List<String>.from(json["language"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "language": List<dynamic>.from(language.map((x) => x)),
      };
}

class Url {
  Url({
    required this.url,
    required this.name,
    required this.subname,
    required this.infoUrl,
    required this.type,
    required this.ext,
    required this.downloadable,
    required this.quality,
    required this.audio,
    required this.noAudio,
    required this.itag,
    required this.attr,
    required this.filesize,
  });

  final String url;
  final String name;
  final String subname;
  final String infoUrl;
  final String type;
  final String ext;
  final bool downloadable;
  final String quality;
  final bool audio;
  final bool noAudio;
  final String itag;
  final Attr attr;
  final int filesize;

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        url: json["url"],
        name: json["name"],
        subname: json["subname"],
        infoUrl: json["info_url"],
        type: json["type"],
        ext: json["ext"],
        downloadable: json["downloadable"],
        quality: json["quality"],
        audio: json["audio"],
        noAudio: json["no_audio"],
        itag: json["itag"],
        attr: Attr.fromJson(json["attr"]),
        filesize: json["filesize"] == null ? null : json["filesize"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "name": name,
        "subname": subname,
        "info_url": infoUrl,
        "type": type,
        "ext": ext,
        "downloadable": downloadable,
        "quality": quality,
        "audio": audio,
        "no_audio": noAudio,
        "itag": itag,
        "attr": attr.toJson(),
        "filesize": filesize == null ? null : filesize,
      };
}

class Attr {
  Attr({
    required this.title,
    // required this.attrClass,
  });

  final String title;
  // final Class attrClass;

  factory Attr.fromJson(Map<String, dynamic> json) => Attr(
        title: json["title"],
        // attrClass: classValues.map[json["class"]],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        // "class": classValues.reverse[attrClass],
      };
}

class YoutubeModel {
  late String title;
  late String duration;
  late String id;
  late String tags;
  // late List<String> video_quality;
  // List<Url> url;

  YoutubeModel({
    required this.duration,
    // required this.url,
    required this.title,
    required this.tags,
    required this.id,
  });

  YoutubeModel.fromJson(Map<String, dynamic> json)
      : duration = '${json['body']['meta']['duration']}',
        title = '${json['body']['meta']['title']}',
        // videoQuality = '${json['body] ['meta'] ['video_quality']}',
        // video_quality = List<String>.from(json["video_quality"].map((x) => x)),
        // url = List<Url>.from(url.map((x) => x.toJson())),
        tags = '${json['body']['meta']['tags']}',
        id = '${json['body']['id']}';
}
