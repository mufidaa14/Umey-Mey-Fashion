import 'package:flutter/material.dart';

class DataPesananPage extends StatelessWidget {
  const DataPesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pesanan = [
      {'nama': 'Bu Kiky', 'model': 'Baju Tidur', 'tgl': '26-10-2025', 'qty': '25 pcs'},
      {'nama': 'Pak Hamid', 'model': 'Baju Batik', 'tgl': '05-11-2025', 'qty': '3 pcs'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Pesanan'),
        backgroundColor: Colors.pink[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: pesanan.length,
          itemBuilder: (context, index) {
            final data = pesanan[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.shopping_bag, color: Colors.pink),
                title: Text(data['model']!),
                subtitle: Text(
                    "Nama: ${data['nama']}\nTanggal: ${data['tgl']}\nJumlah: ${data['qty']}"),
              ),
            );
          },
        ),
      ),
    );
  }
}
