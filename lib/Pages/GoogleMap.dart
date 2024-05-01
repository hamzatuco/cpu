// ignore_for_file: file_names, avoid_web_libraries_in_flutter, depend_on_referenced_packages, implementation_imports

import 'package:flutter/material.dart';
import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

import 'package:web/src/dom/html.dart';

class GoogleMap extends StatelessWidget {
  const GoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = LatLng(44.15475029496712, 17.791146674903015);

      final mapOptions = MapOptions()
        ..zoom = 17
        ..center = LatLng(44.15475029496712, 17.791146674903015)
        ..scrollwheel = false; // Disable scroll wheel zooming

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem as HTMLElement?, mapOptions);

      Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map);

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
