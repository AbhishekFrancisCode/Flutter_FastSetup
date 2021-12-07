// import 'package:flutter/material.dart';
// import 'package:flutter_map/plugin_api.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';

// class MapSample extends StatefulWidget {
//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(),
//     body: FlutterMap(
//       options: MapOptions(
//         center: LatLng(51.5, -0.09),
//         zoom: 13.0,
//       ),
//       layers: [
//         TileLayerOptions(
//           urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
//           subdomains: ['a', 'b', 'c'],
//           // attributionBuilder: (_) {
//           //   return Text("© OpenStreetMap contributors");
//           // },
//         ),
//         MarkerLayerOptions(
//           markers: [
//             Marker(
//               width: 80.0,
//               height: 80.0,
//               point: LatLng(51.5, -0.09),
//               builder: (ctx) =>
//               Container(
//                 child: FlutterLogo(),
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
// }
