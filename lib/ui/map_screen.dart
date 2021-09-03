import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:io' show Platform;
// class MapScreen extends StatelessWidget {
//   const MapScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//   }
// }

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Set<Marker> _markers = {};
  final LatLng _positionShop = LatLng(-3.2902036727620327, 114.6001167476378);
  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("-3.2902036727620327, 114.6001167476378"),
        position: _positionShop,
        icon: BitmapDescriptor.defaultMarker,
      )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: _positionShop,
                zoom: 14.0,
              ),
              markers: _markers,
            ),
            SafeArea(
              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child:
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }

}

