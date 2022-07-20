import 'package:digital_downloader/tiktok_api.dart';
import 'package:digital_downloader/tiktok_model.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/link.dart';

class DownloadTiktok extends StatefulWidget {
  DownloadTiktok({Key? key, required this.video}) : super(key: key);

  String video;

  @override
  State<DownloadTiktok> createState() => _DownloadTiktokState();
}

class _DownloadTiktokState extends State<DownloadTiktok> {
  TiktokApi tiktokApi = TiktokApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Download file'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<Tiktok>(
              future: tiktokApi.collectApi(widget.video),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Card(
                    child: Column(
                      children: [
                        Text(
                            'Video description: ${snapshot.data!.description}'),
                        Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(snapshot.data!.video),
                          builder: (context, followLink) => TextButton(
                            onPressed: followLink,
                            child: const Text('Click to download'),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: Text('Loading'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
