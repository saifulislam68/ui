import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/mood/mood_screen.dart';
import 'package:ui/mood_list/mood_list.dart';
import 'package:ui/video/video.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Category',
              style: GoogleFonts.lora(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Select Mood'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const MoodScreen())));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Mood List'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const MoodList())));
              // Navigator.of(context)
              //     .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Video Try'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => VideoApp())));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Sign In'),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: ((context) => const LoginPage())));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: ((context) => const SettingsScreen())));
            },
          ),
        ],
      ),
    );
  }
}
