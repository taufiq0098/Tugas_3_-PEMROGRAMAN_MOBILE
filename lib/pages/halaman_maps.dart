import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class halamanMaps extends StatefulWidget {
  const halamanMaps({super.key});

  @override
  State<halamanMaps> createState() => halamanMapsState();
}

class halamanMapsState extends State<halamanMaps> {
  static const LatLng lokasiKampus = LatLng(-6.9720791, 107.6053966);

  final Set<Marker> marker = {
    const Marker(
      position: LatLng(-6.9720791, 107.6053966),
      markerId: MarkerId('lokasi_kampus'),
      infoWindow: InfoWindow(
        title: 'Telkom University',
        snippet: 'Jl. Telekomunikasi Bandung',
      ), // InfoWindow
    ), // Marker
  };
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Google Maps Flutter')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: lokasiKampus,
          zoom: 15,
        ), // CameraPosition
        markers: marker,
      ), // GoogleMap
    ); // Scaffold
  }
}