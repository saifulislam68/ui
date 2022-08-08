import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/config/color.dart';
import 'package:ui/design/Intro_content.dart';
import 'package:ui/design/app_drawer.dart';
import 'package:ui/design/content.dart';
import 'package:ui/model/dummy_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        title: Text(
          'Muraqabah',
          style: GoogleFonts.nunito(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.notifications)],
      ),
      drawer: const AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Introduction to Muraqabah',
              style:
                  GoogleFonts.lora(fontSize: 20, color: AppColor.primaryColor),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyData().intro.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return IntroContent(
                  intro: DummyData().intro[index],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Guided Muraqabah',
              style:
                  GoogleFonts.lora(fontSize: 20, color: AppColor.primaryColor),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyData().intro.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Content(
                  intro: DummyData().intro[index],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Free Coureses',
              style:
                  GoogleFonts.lora(fontSize: 20, color: AppColor.primaryColor),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyData().intro.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Content(
                  intro: DummyData().intro[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
