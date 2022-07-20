import 'package:digital_downloader/download_file.dart';
import 'package:digital_downloader/home_page.dart';
import 'package:digital_downloader/home_page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choice screen'),
      ),
      body: Column(
        children: [
          const Text('What you want to download?'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: const Text('Download Youtube video'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage1(),
                ),
              );
            },
            child: const Text('Download TikTok video'),
          ),
        ],
      ),
    );
  }
}
