import 'package:flutter/material.dart';
import 'package:ui/model/dummy_data.dart';

class Content extends StatefulWidget {
  final Data? intro;
  const Content({Key? key, this.intro}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.intro?.assetImage ?? "",
              height: 130,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
