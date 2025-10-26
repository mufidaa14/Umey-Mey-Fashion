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
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: pesanan.length,
                itemBuilder: (context, index) {
                  final item = pesanan[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[200],
                        child: Text('${index + 1}'),
                      ),
                      title: Text('${item['nama']} - ${item['model']}'),
                      subtitle: Text(item['tgl'] ?? ''),
                      trailing: Text(item['qty'] ?? ''),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[300],
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
