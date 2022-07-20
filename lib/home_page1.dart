import 'package:digital_downloader/download_tiktok.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage1 extends StatelessWidget {
   HomePage1({Key? key}) : super(key: key);

  final TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Download'),
      ),
      body: Container(
        padding: const EdgeInsets.all(14),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _editingController,
            ),
            ElevatedButton(
              onPressed: () {
                String video = _editingController.text;
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => DownloadTiktok(video: video)),
                  ),
                );
              },
              child: const Text('Download information'),
            ),
          ],
        ),
      ),
    );
  }
}