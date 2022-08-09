import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/model/dummy_data.dart';

import '../config/color.dart';

class MoodListCard extends StatefulWidget {
  final Data? status;
  const MoodListCard({Key? key, this.status}) : super(key: key);

  @override
  State<MoodListCard> createState() => _MoodListCardState();
}

class _MoodListCardState extends State<MoodListCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        color: Color(0xffA3A3A3),
        child: Center(
          child: Text(
            widget.status?.title ?? "",
            style: GoogleFonts.lora(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
