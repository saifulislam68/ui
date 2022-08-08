import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/config/color.dart';
import 'package:ui/model/dummy_data.dart';

class MoodCard extends StatefulWidget {
  final Data? emoji;
  const MoodCard({Key? key, this.emoji}) : super(key: key);

  @override
  State<MoodCard> createState() => _MoodCardState();
}

class _MoodCardState extends State<MoodCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        color: Color(0xffe1fae8),
        height: 130,
        width: 130,
        child: Column(
          children: [
            Image.asset(
              widget.emoji?.assetImage ?? "",
              height: 100,
            ),
            Text(
              widget.emoji?.title ?? "",
              style: GoogleFonts.nunito(
                  color: AppColor.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
