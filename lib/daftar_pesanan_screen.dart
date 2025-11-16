import 'package:flutter/material.dart';

class DaftarPesananScreen extends StatelessWidget {
  const DaftarPesananScreen({super.key});

  // Widget untuk setiap item pesanan
  Widget _buildOrderItem({
    required int number,
    required String customerName,
    required String itemDetails,
    required String date,
    required String quantity,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.grey[200], // Warna abu-abu terang
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            // Lingkaran Nomor Pesanan
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 1.5),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  '$number',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(width: 15),
            // Detail Pesanan
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    customerName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text('$itemDetails\n$date'),
                ],
              ),
            ),
            // Quantity
            Text(
              '$quantity pcs',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Daftar Pesanan',
          style: TextStyle(color: Color(0xFFF06292)), // Warna pink
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          _buildOrderItem(
            number: 1,
            customerName: 'Bu Kiky',
            itemDetails: 'Baju Atasan',
            date: '28-10-2025',
            quantity: '25',
          ),
          _buildOrderItem(
            number: 2,
            customerName: 'Pak Hamid',
            itemDetails: 'Celana',
            date: '05-11-2025',
            quantity: '3',
          ),
          // Tambahkan item pesanan lainnya di sini
        ],
      ),
    );
  }
}