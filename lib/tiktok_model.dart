class TiktokModel {
  bool? hasError;
  int? errorCode;
  Null? errorMessage;
  Null? errorDescription;
  Body? body;

  TiktokModel(
      {this.hasError,
      this.errorCode,
      this.errorMessage,
      this.errorDescription,
      this.body});

  TiktokModel.fromJson(Map<String, dynamic> json) {
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
  String? videoRaw;
  String? video;
  Info? info;

  Body({this.videoRaw, this.video, this.info});

  Body.fromJson(Map<String, dynamic> json) {
    videoRaw = json['videoRaw'];
    video = json['video'];
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['videoRaw'] = videoRaw;
    data['video'] = video;
    if (info != null) {
      data['info'] = info!.toJson();
    }
    return data;
  }
}

class Info {
  ItemInfo? itemInfo;

  Info({this.itemInfo});

  Info.fromJson(Map<String, dynamic> json) {
    itemInfo =
        json['itemInfo'] != null ? ItemInfo.fromJson(json['itemInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (itemInfo != null) {
      data['itemInfo'] = itemInfo!.toJson();
    }
    return data;
  }
}

class ItemInfo {
  ItemStruct? itemStruct;

  ItemInfo({this.itemStruct});

  ItemInfo.fromJson(Map<String, dynamic> json) {
    itemStruct = json['itemStruct'] != null
        ? ItemStruct.fromJson(json['itemStruct'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (itemStruct != null) {
      data['itemStruct'] = itemStruct!.toJson();
    }
    return data;
  }
}

class ItemStruct {
  String? id;
  String? desc;
  int? createTime;
  int? scheduleTime;
  Video? video;
  Author? author;
  List<Challenges>? challenges;
  Stats? stats;
  bool? isActivityItem;
  DuetInfo? duetInfo;
  List<Null>? warnInfo;
  bool? originalItem;
  bool? officalItem;
  List<TextExtra>? textExtra;
  bool? secret;
  bool? forFriend;
  bool? digged;
  int? itemCommentStatus;
  bool? showNotPass;
  bool? vl1;
  int? takeDown;
  bool? itemMute;
  List<Null>? effectStickers;
  AuthorStats? authorStats;
  bool? privateItem;
  bool? duetEnabled;
  bool? stitchEnabled;
  List<Null>? stickersOnItem;
  bool? isAd;
  bool? shareEnabled;
  List<Null>? comments;
  int? duetDisplay;
  int? stitchDisplay;
  List<String>? diversificationLabels;
  int? adLabelVersion;
  bool? indexEnabled;

  ItemStruct(
      {this.id,
      this.desc,
      this.createTime,
      this.scheduleTime,
      this.video,
      this.author,
      this.challenges,
      this.stats,
      this.isActivityItem,
      this.duetInfo,
      this.warnInfo,
      this.originalItem,
      this.officalItem,
      this.textExtra,
      this.secret,
      this.forFriend,
      this.digged,
      this.itemCommentStatus,
      this.showNotPass,
      this.vl1,
      this.takeDown,
      this.itemMute,
      this.effectStickers,
      this.authorStats,
      this.privateItem,
      this.duetEnabled,
      this.stitchEnabled,
      this.stickersOnItem,
      this.isAd,
      this.shareEnabled,
      this.comments,
      this.duetDisplay,
      this.stitchDisplay,
      this.diversificationLabels,
      this.adLabelVersion,
      this.indexEnabled});

  ItemStruct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    desc = json['desc'];
    createTime = json['createTime'];
    scheduleTime = json['scheduleTime'];
    video = json['video'] != null ? Video.fromJson(json['video']) : null;
    author = json['author'] != null ? Author.fromJson(json['author']) : null;
    if (json['challenges'] != null) {
      challenges = <Challenges>[];
      json['challenges'].forEach((v) {
        challenges!.add(Challenges.fromJson(v));
      });
    }
    stats = json['stats'] != null ? Stats.fromJson(json['stats']) : null;
    isActivityItem = json['isActivityItem'];
    duetInfo =
        json['duetInfo'] != null ? DuetInfo.fromJson(json['duetInfo']) : null;

    originalItem = json['originalItem'];
    officalItem = json['officalItem'];
    if (json['textExtra'] != null) {
      textExtra = <TextExtra>[];
      json['textExtra'].forEach((v) {
        textExtra!.add(TextExtra.fromJson(v));
      });
    }
    secret = json['secret'];
    forFriend = json['forFriend'];
    digged = json['digged'];
    itemCommentStatus = json['itemCommentStatus'];
    showNotPass = json['showNotPass'];
    vl1 = json['vl1'];
    takeDown = json['takeDown'];
    itemMute = json['itemMute'];

    authorStats = json['authorStats'] != null
        ? AuthorStats.fromJson(json['authorStats'])
        : null;
    privateItem = json['privateItem'];
    duetEnabled = json['duetEnabled'];
    stitchEnabled = json['stitchEnabled'];

    isAd = json['isAd'];
    shareEnabled = json['shareEnabled'];

    duetDisplay = json['duetDisplay'];
    stitchDisplay = json['stitchDisplay'];
    diversificationLabels = json['diversificationLabels'].cast<String>();
    adLabelVersion = json['adLabelVersion'];
    indexEnabled = json['indexEnabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['desc'] = desc;
    data['createTime'] = createTime;
    data['scheduleTime'] = scheduleTime;
    if (video != null) {
      data['video'] = video!.toJson();
    }
    if (author != null) {
      data['author'] = author!.toJson();
    }
    if (challenges != null) {
      data['challenges'] = challenges!.map((v) => v.toJson()).toList();
    }
    if (stats != null) {
      data['stats'] = stats!.toJson();
    }
    data['isActivityItem'] = isActivityItem;
    if (duetInfo != null) {
      data['duetInfo'] = duetInfo!.toJson();
    }

    data['originalItem'] = originalItem;
    data['officalItem'] = officalItem;
    if (textExtra != null) {
      data['textExtra'] = textExtra!.map((v) => v.toJson()).toList();
    }
    data['secret'] = secret;
    data['forFriend'] = forFriend;
    data['digged'] = digged;
    data['itemCommentStatus'] = itemCommentStatus;
    data['showNotPass'] = showNotPass;
    data['vl1'] = vl1;
    data['takeDown'] = takeDown;
    data['itemMute'] = itemMute;

    if (authorStats != null) {
      data['authorStats'] = authorStats!.toJson();
    }
    data['privateItem'] = privateItem;
    data['duetEnabled'] = duetEnabled;
    data['stitchEnabled'] = stitchEnabled;

    data['isAd'] = isAd;
    data['shareEnabled'] = shareEnabled;

    data['duetDisplay'] = duetDisplay;
    data['stitchDisplay'] = stitchDisplay;
    data['diversificationLabels'] = diversificationLabels;
    data['adLabelVersion'] = adLabelVersion;
    data['indexEnabled'] = indexEnabled;
    return data;
  }
}

class Video {
  String? id;
  int? height;
  int? width;
  int? duration;
  String? ratio;
  String? cover;
  String? originCover;
  String? dynamicCover;
  String? playAddr;
  String? downloadAddr;
  List<String>? shareCover;
  String? reflowCover;
  int? bitrate;
  String? encodedType;
  String? format;
  String? videoQuality;
  String? encodeUserTag;
  String? codecType;
  String? definition;

  Video(
      {this.id,
      this.height,
      this.width,
      this.duration,
      this.ratio,
      this.cover,
      this.originCover,
      this.dynamicCover,
      this.playAddr,
      this.downloadAddr,
      this.shareCover,
      this.reflowCover,
      this.bitrate,
      this.encodedType,
      this.format,
      this.videoQuality,
      this.encodeUserTag,
      this.codecType,
      this.definition});

  Video.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    height = json['height'];
    width = json['width'];
    duration = json['duration'];
    ratio = json['ratio'];
    cover = json['cover'];
    originCover = json['originCover'];
    dynamicCover = json['dynamicCover'];
    playAddr = json['playAddr'];
    downloadAddr = json['downloadAddr'];
    shareCover = json['shareCover'].cast<String>();
    reflowCover = json['reflowCover'];
    bitrate = json['bitrate'];
    encodedType = json['encodedType'];
    format = json['format'];
    videoQuality = json['videoQuality'];
    encodeUserTag = json['encodeUserTag'];
    codecType = json['codecType'];
    definition = json['definition'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['height'] = height;
    data['width'] = width;
    data['duration'] = duration;
    data['ratio'] = ratio;
    data['cover'] = cover;
    data['originCover'] = originCover;
    data['dynamicCover'] = dynamicCover;
    data['playAddr'] = playAddr;
    data['downloadAddr'] = downloadAddr;
    data['shareCover'] = shareCover;
    data['reflowCover'] = reflowCover;
    data['bitrate'] = bitrate;
    data['encodedType'] = encodedType;
    data['format'] = format;
    data['videoQuality'] = videoQuality;
    data['encodeUserTag'] = encodeUserTag;
    data['codecType'] = codecType;
    data['definition'] = definition;
    return data;
  }
}

class Author {
  String? id;
  String? shortId;
  String? uniqueId;
  String? nickname;
  String? avatarLarger;
  String? avatarMedium;
  String? avatarThumb;
  String? signature;
  bool? verified;
  String? secUid;
  bool? ftc;
  int? relation;
  bool? openFavorite;
  int? commentSetting;
  int? duetSetting;
  int? stitchSetting;
  bool? privateAccount;
  bool? secret;
  bool? isADVirtual;
  String? roomId;

  Author(
      {this.id,
      this.shortId,
      this.uniqueId,
      this.nickname,
      this.avatarLarger,
      this.avatarMedium,
      this.avatarThumb,
      this.signature,
      this.verified,
      this.secUid,
      this.ftc,
      this.relation,
      this.openFavorite,
      this.commentSetting,
      this.duetSetting,
      this.stitchSetting,
      this.privateAccount,
      this.secret,
      this.isADVirtual,
      this.roomId});

  Author.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    shortId = json['shortId'];
    uniqueId = json['uniqueId'];
    nickname = json['nickname'];
    avatarLarger = json['avatarLarger'];
    avatarMedium = json['avatarMedium'];
    avatarThumb = json['avatarThumb'];
    signature = json['signature'];
    verified = json['verified'];
    secUid = json['secUid'];
    ftc = json['ftc'];
    relation = json['relation'];
    openFavorite = json['openFavorite'];
    commentSetting = json['commentSetting'];
    duetSetting = json['duetSetting'];
    stitchSetting = json['stitchSetting'];
    privateAccount = json['privateAccount'];
    secret = json['secret'];
    isADVirtual = json['isADVirtual'];
    roomId = json['roomId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['shortId'] = shortId;
    data['uniqueId'] = uniqueId;
    data['nickname'] = nickname;
    data['avatarLarger'] = avatarLarger;
    data['avatarMedium'] = avatarMedium;
    data['avatarThumb'] = avatarThumb;
    data['signature'] = signature;
    data['verified'] = verified;
    data['secUid'] = secUid;
    data['ftc'] = ftc;
    data['relation'] = relation;
    data['openFavorite'] = openFavorite;
    data['commentSetting'] = commentSetting;
    data['duetSetting'] = duetSetting;
    data['stitchSetting'] = stitchSetting;
    data['privateAccount'] = privateAccount;
    data['secret'] = secret;
    data['isADVirtual'] = isADVirtual;
    data['roomId'] = roomId;
    return data;
  }
}

class Challenges {
  String? id;
  String? title;
  String? desc;
  String? profileLarger;
  String? profileMedium;
  String? profileThumb;
  String? coverLarger;
  String? coverMedium;
  String? coverThumb;
  bool? isCommerce;

  Challenges(
      {this.id,
      this.title,
      this.desc,
      this.profileLarger,
      this.profileMedium,
      this.profileThumb,
      this.coverLarger,
      this.coverMedium,
      this.coverThumb,
      this.isCommerce});

  Challenges.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    desc = json['desc'];
    profileLarger = json['profileLarger'];
    profileMedium = json['profileMedium'];
    profileThumb = json['profileThumb'];
    coverLarger = json['coverLarger'];
    coverMedium = json['coverMedium'];
    coverThumb = json['coverThumb'];
    isCommerce = json['isCommerce'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['desc'] = desc;
    data['profileLarger'] = profileLarger;
    data['profileMedium'] = profileMedium;
    data['profileThumb'] = profileThumb;
    data['coverLarger'] = coverLarger;
    data['coverMedium'] = coverMedium;
    data['coverThumb'] = coverThumb;
    data['isCommerce'] = isCommerce;
    return data;
  }
}

class Stats {
  int? diggCount;
  int? shareCount;
  int? commentCount;
  int? playCount;

  Stats({this.diggCount, this.shareCount, this.commentCount, this.playCount});

  Stats.fromJson(Map<String, dynamic> json) {
    diggCount = json['diggCount'];
    shareCount = json['shareCount'];
    commentCount = json['commentCount'];
    playCount = json['playCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['diggCount'] = diggCount;
    data['shareCount'] = shareCount;
    data['commentCount'] = commentCount;
    data['playCount'] = playCount;
    return data;
  }
}

class DuetInfo {
  String? duetFromId;

  DuetInfo({this.duetFromId});

  DuetInfo.fromJson(Map<String, dynamic> json) {
    duetFromId = json['duetFromId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['duetFromId'] = duetFromId;
    return data;
  }
}

class TextExtra {
  String? awemeId;
  int? start;
  int? end;
  String? hashtagId;
  String? hashtagName;
  int? type;
  int? subType;
  String? userId;
  bool? isCommerce;
  String? userUniqueId;
  String? secUid;

  TextExtra(
      {this.awemeId,
      this.start,
      this.end,
      this.hashtagId,
      this.hashtagName,
      this.type,
      this.subType,
      this.userId,
      this.isCommerce,
      this.userUniqueId,
      this.secUid});

  TextExtra.fromJson(Map<String, dynamic> json) {
    awemeId = json['awemeId'];
    start = json['start'];
    end = json['end'];
    hashtagId = json['hashtagId'];
    hashtagName = json['hashtagName'];
    type = json['type'];
    subType = json['subType'];
    userId = json['userId'];
    isCommerce = json['isCommerce'];
    userUniqueId = json['userUniqueId'];
    secUid = json['secUid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['awemeId'] = awemeId;
    data['start'] = start;
    data['end'] = end;
    data['hashtagId'] = hashtagId;
    data['hashtagName'] = hashtagName;
    data['type'] = type;
    data['subType'] = subType;
    data['userId'] = userId;
    data['isCommerce'] = isCommerce;
    data['userUniqueId'] = userUniqueId;
    data['secUid'] = secUid;
    return data;
  }
}

class AuthorStats {
  int? followerCount;
  int? followingCount;
  int? heart;
  int? heartCount;
  int? videoCount;
  int? diggCount;

  AuthorStats(
      {this.followerCount,
      this.followingCount,
      this.heart,
      this.heartCount,
      this.videoCount,
      this.diggCount});

  AuthorStats.fromJson(Map<String, dynamic> json) {
    followerCount = json['followerCount'];
    followingCount = json['followingCount'];
    heart = json['heart'];
    heartCount = json['heartCount'];
    videoCount = json['videoCount'];
    diggCount = json['diggCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['followerCount'] = followerCount;
    data['followingCount'] = followingCount;
    data['heart'] = heart;
    data['heartCount'] = heartCount;
    data['videoCount'] = videoCount;
    data['diggCount'] = diggCount;
    return data;
  }
}

class Tiktok {
  late String video;
  late String description;

  Tiktok({
    required this.video,
    required this.description,
  });

  Tiktok.fromJson(Map<String, dynamic> json)
      : video = '${json['body']['info']['itemInfo']['itemStruct']['video']['downloadAddr']}',
        description =
            '${json['body']['info']['itemInfo']['itemStruct']['desc']}';
}
