class ModelClass {
  bool? hasError;
  int? errorCode;
  dynamic errorMessage;
  dynamic errorDescription;
  Body? body;

  ModelClass(
      {this.hasError,
      this.errorCode,
      this.errorMessage,
      this.errorDescription,
      this.body});

  ModelClass.fromJson(Map<String, dynamic> json) {
    hasError = json['hasError'];
    errorCode = json['errorCode'];
    errorMessage = json['errorMessage'];
    errorDescription = json['errorDescription'];
    body = json['body'] != null ? Body.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['hasError'] = hasError;
    data['errorCode'] = errorCode;
    data['errorMessage'] = errorMessage;
    data['errorDescription'] = errorDescription;
    if (body != null) {
      data['body'] = body!.toJson();
    }
    return data;
  }
}

class Body {
  String? id;
  Meta? meta;
  String? thumb;
  List<String>? videoQuality;
  List<Url>? url;

  Body({this.id, this.meta, this.thumb, this.videoQuality, this.url});

  Body.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    thumb = json['thumb'];
    videoQuality = json['video_quality'].cast<String>();
    if (json['url'] != null) {
      url = <Url>[];
      json['url'].forEach((v) {
        url!.add(Url.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    data['thumb'] = thumb;
    data['video_quality'] = videoQuality;
    if (url != null) {
      data['url'] = url!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meta {
  String? title;
  String? source;
  String? duration;
  String? tags;
  Subtitle? subtitle;

  Meta({this.title, this.source, this.duration, this.tags, this.subtitle});

  Meta.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    source = json['source'];
    duration = json['duration'];
    tags = json['tags'];
    subtitle =
        json['subtitle'] != null ? Subtitle.fromJson(json['subtitle']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = title;
    data['source'] = source;
    data['duration'] = duration;
    data['tags'] = tags;
    if (subtitle != null) {
      data['subtitle'] = subtitle!.toJson();
    }
    return data;
  }
}

class Subtitle {
  String? token;
  List<String>? language;

  Subtitle({this.token, this.language});

  Subtitle.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    language = json['language'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['token'] = token;
    data['language'] = language;
    return data;
  }
}

class Url {
  String? url;
  String? name;
  String? subname;
  String? infoUrl;
  String? type;
  String? ext;
  bool? downloadable;
  String? quality;
  bool? audio;
  bool? noAudio;
  String? itag;

  int? filesize;

  Url(
      {this.url,
      this.name,
      this.subname,
      this.infoUrl,
      this.type,
      this.ext,
      this.downloadable,
      this.quality,
      this.audio,
      this.noAudio,
      this.itag,
      this.filesize});

  Url.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    subname = json['subname'];
    infoUrl = json['info_url'];
    type = json['type'];
    ext = json['ext'];
    downloadable = json['downloadable'];
    quality = json['quality'];
    audio = json['audio'];
    noAudio = json['no_audio'];
    itag = json['itag'];

    filesize = json['filesize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['name'] = name;
    data['subname'] = subname;
    data['info_url'] = infoUrl;
    data['type'] = type;
    data['ext'] = ext;
    data['downloadable'] = downloadable;
    data['quality'] = quality;
    data['audio'] = audio;
    data['no_audio'] = noAudio;
    data['itag'] = itag;

    data['filesize'] = filesize;
    return data;
  }
}
