import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/config/color.dart';
import 'package:ui/design/app_drawer.dart';

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
        actions: const [Icon(Icons.notifications)],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
