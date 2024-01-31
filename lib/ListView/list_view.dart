import 'package:flutter/material.dart';

class StoreListView extends StatefulWidget {
  const StoreListView({ super.key });

  @override
  State<StoreListView> createState() => _StoreListView();
}

class _StoreListView extends State<StoreListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View"),),
      body: Container(color: const Color(0xFFFFE306)),
    );
  }
}