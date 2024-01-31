import 'package:flutter/material.dart';

class MapView extends StatefulWidget {
  const MapView({ super.key });

  @override
  State<MapView> createState() => _MapView();
}

class _MapView extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color.fromARGB(255, 77, 173, 105));
  }
}