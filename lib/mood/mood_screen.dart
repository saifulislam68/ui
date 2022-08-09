import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/config/color.dart';
import 'package:ui/design/app_drawer.dart';
import 'package:ui/model/dummy_data.dart';
import 'package:ui/mood/mood_card.dart';

class MoodScreen extends StatefulWidget {
  const MoodScreen({Key? key}) : super(key: key);

  @override
  State<MoodScreen> createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          size: 30,
          color: AppColor.primaryColor,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning,',
              style: GoogleFonts.nunito(fontSize: 24),
            ),
            Text(
              'Sharun Chowdhury!',
              style: GoogleFonts.nunito(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'How do you feel now?',
              style: GoogleFonts.nunito(fontSize: 24, color: AppColor.grey),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2.5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: DummyData().emoji.length,
                itemBuilder: (BuildContext ctx, index) {
                  return MoodCard(
                    emoji: DummyData().emoji[index],
                  );
                }),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Column(
              children: [
                Text(
                  "More details",
                  style: GoogleFonts.nunito(
                      fontSize: 20, color: AppColor.primaryColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Skip Mood & Select Items ",
                  style: GoogleFonts.nunito(fontSize: 20, color: AppColor.grey),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
