import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {

  late GoogleMapController mapController;
  static const LatLng showLocation = const LatLng(6.828815165961423, 80.10663957293914);

  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  List<MarkerId>listMarkerIds = List<MarkerId>.empty(growable: true);

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 450,
      child: GoogleMap(
        zoomGesturesEnabled: true,
        myLocationEnabled: true,
        initialCameraPosition: CameraPosition(
          target: showLocation,
          zoom: 10.0,
        ),
        mapType: MapType.normal,
        markers: Set<Marker>.of(markers.values),
        onMapCreated: (GoogleMapController controler) {
          _controller.complete(controler);

          MarkerId markerId1 = MarkerId("1");
          MarkerId markerId2 = MarkerId("2");
          MarkerId markerId3 = MarkerId("3");
          MarkerId markerId4 = MarkerId("4");
          MarkerId markerId5 = MarkerId("5");

          listMarkerIds.add(markerId1);
          listMarkerIds.add(markerId2);
          listMarkerIds.add(markerId3);
          listMarkerIds.add(markerId4);
          listMarkerIds.add(markerId5);


          Marker marker1 = Marker(
            markerId: markerId1,
            position: LatLng(6.754772456501313, 80.09971584894457),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueBlue),
            infoWindow: InfoWindow(
                title: "Sarah Alyoya",
                snippet:"Planter 01"
            ),
          );


          Marker marker2 = Marker(
            markerId: markerId2,
            position: LatLng(6.7826246317538486, 79.89599065712834),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueBlue),

            infoWindow: InfoWindow(
                title: "Edward Winchester",
                snippet:"Planter 02"
            ),
          );

          Marker marker3 = Marker(
            markerId: markerId3,
            position: LatLng(6.612622902049525, 79.97880219103804),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueBlue),
            infoWindow: InfoWindow(
                title: "Will Smith",
                snippet:"Planter 03"
            ),
          );


          Marker marker4 = Marker(
            markerId: markerId4,
            position: LatLng(6.6162997024982015, 80.16387411640517),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueBlue),
            infoWindow: InfoWindow(
                title: "Henri Brown",
                snippet:"Planter 04"
            ),
          );


          Marker marker5 = Marker(
            markerId: markerId5,
            position: LatLng(6.710048003084223, 80.00760781875753),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRed),
            infoWindow: InfoWindow(
                title: "Current Location",
                snippet:"Salitha"
            ),
          );


          setState(() {
            markers[markerId1] = marker1;
            markers[markerId2] = marker2;
            markers[markerId3] = marker3;
            markers[markerId4] = marker4;
            markers[markerId5] = marker5;
          });
        },
      ),
    );
  }
}
