import 'package:flutter/material.dart';
import 'package:ui/model/dummy_data.dart';
import 'package:ui/video/video.dart';

class IntroContent extends StatefulWidget {
  final Data? intro;
  const IntroContent({Key? key, this.intro}) : super(key: key);

  @override
  State<IntroContent> createState() => _IntroContentState();
}

class _IntroContentState extends State<IntroContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => VideoApp())));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.intro?.assetImage ?? "",
                height: 120,
                width: 230,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
