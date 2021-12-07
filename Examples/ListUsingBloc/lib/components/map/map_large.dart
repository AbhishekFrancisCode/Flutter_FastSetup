// import 'package:flutter/material.dart';
// import 'package:flutter_map/plugin_api.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';

// class MapLarge extends StatefulWidget {
//   final double latitude;
//   final double longitude;
//   const MapLarge(this.latitude, this.longitude, {Key? key}) : super(key: key);

//   @override
//   State<MapLarge> createState() => MapLargeState( latitude, longitude);
// }

// class MapLargeState extends State<MapLarge> {
//  final  double latitude;
//  final  double longitude;

//   MapLargeState(this.latitude, this.longitude);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: FlutterMap(
//         options: MapOptions(
//           center: LatLng(latitude, longitude),
//           minZoom: 10.0,
//         ),
//         layers: [
//           TileLayerOptions(
//             urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
//             subdomains: ['a', 'b', 'c'],
//             // attributionBuilder: (_) {
//             //   return Text("© OpenStreetMap contributors");
//             // },
//           ),
//           MarkerLayerOptions(
//             markers: [
//               Marker(
//                 width:45.0,
//                 height: 45.0,
//                 point: LatLng(latitude, longitude),
//                 builder: (ctx) => const Icon(
//                   Icons.location_pin,
//                   color: Colors.red,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
      
//     );
//   }
// }
