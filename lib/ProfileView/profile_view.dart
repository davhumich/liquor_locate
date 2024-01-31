import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({ super.key });

  @override
  State<ProfileView> createState() => _ProfileView();
}

class _ProfileView extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile View"),),
      body: Container(color: const Color.fromARGB(255, 111, 96, 172)),
    );
  }
}