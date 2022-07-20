// import 'dart:convert';

// import 'package:digital_downloader/tokens.dart';
import 'package:digital_downloader/model_class.dart';
import 'package:digital_downloader/youtube_api.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
// import 'package:http/http.dart' as http;

class DownloadFile extends StatefulWidget {
  String vid;
  DownloadFile({Key? key, required this.vid}) : super(key: key);

  @override
  State<DownloadFile> createState() => _DownloadFileState();
}

class _DownloadFileState extends State<DownloadFile> {
  YoutubeApi youtubeApi = YoutubeApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Info'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<ModelClass>(
                future: youtubeApi.collectApi(widget.vid),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.body!.url!.length,
                        itemBuilder: (context, index) {
                          return Card(
                              child: Column(
                            children: [
                              Text(
                                  'Video type: ${snapshot.data!.body!.url![index].name!}'),
                              Text(
                                  'Video quality: ${snapshot.data!.body!.url![index].quality!}'),
                              Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse(
                                    snapshot.data!.body!.url![index].url!),
                                builder: (context, followLink) => TextButton(
                                  onPressed: followLink,
                                  child: const Text('Click to download'),
                                ),
                              ),
                            ],
                          ));
                        });

                    // if (snapshot.hasData) {
                    //   return Column(
                    //     children: [
                    //       Card(
                    //         child: Container(
                    //           padding: const EdgeInsets.all(8),
                    //           child: Text(snapshot.data!.body.id),
                    //         ),
                    //       ),
                    // Card(
                    //   child: Container(
                    //     padding: const EdgeInsets.all(8),
                    //     child:
                    //         Text(snapshot.data![0].video_quality[1].toString()),
                    //   ),
                    // ),
                    // ListView.builder(
                    //   itemCount: snapshot.data!.videoQuality.length,
                    //   itemBuilder: (context, index) {
                    //   return Column(children: [
                    //     Text(snapshot.data != null
                    //         ? snapshot.data!.videoQuality[index]
                    //         : 'no value'),
                    //   ],);
                    // })
                    //
                    // Card(
                    //   child: Container(
                    //     padding: const EdgeInsets.all(8),
                    //     child: Text(
                    //         snapshot.data != null ? snapshot.data!.body.url[0].infoUrl : 'no value'),
                    //   ),
                    // ),
                    // Card(
                    //   child: Container(
                    //     padding: const EdgeInsets.all(8),
                    //     child: Text(snapshot.data != null
                    //         ? snapshot.data!.tags
                    //         : 'no value'),
                    //   ),
                    // ),
                    // Card(
                    //   child: Container(
                    //     padding: const EdgeInsets.all(8),
                    //     child: Text(snapshot.data != null
                    //         ? snapshot.data!.videoQuality[0]
                    //         : 'no value'),
                    //   ),
                    // ),
                    //   ],
                    // );
                  }

                  // }
                  else {
                    return const Center(
                      child: Text('Loading'),
                    );
                  }
                  // return const CircularProgressIndicator();
                }),
          ),
        ],
      ),
    );
  }
}
