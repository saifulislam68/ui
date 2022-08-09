import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/model/dummy_data.dart';
import 'package:ui/mood_list/mood_list_card.dart';

import '../config/color.dart';

class MoodList extends StatefulWidget {
  const MoodList({Key? key}) : super(key: key);

  @override
  State<MoodList> createState() => _MoodListState();
}

class _MoodListState extends State<MoodList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning, Sharun!',
                style: GoogleFonts.nunito(fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'How do you feel now?',
                style: GoogleFonts.nunito(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Select a mood that best describe your mood or state of mind now',
                style: GoogleFonts.nunito(fontSize: 18, color: AppColor.grey),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount: DummyData().status.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return MoodListCard(
                      status: DummyData().status[index],
                    );
                  }),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "Skip Mood & Select Items ",
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: AppColor.grey,
                    fontWeight: FontWeight.bold),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
