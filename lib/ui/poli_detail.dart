import 'package:flutter/material.dart';
import '../model/poli.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail(
      {super.key, required this.poli}); // Corrected the constructor

  @override
  State<PoliDetail> createState() => _PoliDetailState(); // Fixed missing <
}

class _PoliDetailState extends State<PoliDetail> {
  // State class needs to match its widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Poli")), // Made title a const
      body: Column(
        children: [
          const SizedBox(height: 20), // Added const for optimization
          Text(
            "Nama Poli: ${widget.poli.namaPoli}",
            style: const TextStyle(fontSize: 20), // Made TextStyle const
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Action for Ubah (Change)
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Ubah"),
              ),
              ElevatedButton(
                onPressed: () {
                  // Action for Hapus (Delete)
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Hapus"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
