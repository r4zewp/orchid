import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LandingMap extends StatefulWidget {
  const LandingMap({super.key});

  @override
  State<LandingMap> createState() => _LandingMapState();
}

class _LandingMapState extends State<LandingMap> {
  final CameraPosition shopPos = const CameraPosition(
    target: LatLng(48.757303777592156, 44.54759618876479),
    zoom: 14.4746,
  );

  final Completer<GoogleMapController> mapCtrl =
      Completer<GoogleMapController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * (500 / 1080),
      width: double.infinity,
      child: GoogleMap(
        scrollGesturesEnabled: false,
        myLocationEnabled: true,
        initialCameraPosition: shopPos,
        markers: {
          Marker(
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueViolet),
            position: const LatLng(48.757303777592156, 44.54759618876479),
            markerId: const MarkerId('shop'),
          ),
        },
        onMapCreated: (controller) {
          mapCtrl.complete(controller);
        },
      ),
    );
  }
}
