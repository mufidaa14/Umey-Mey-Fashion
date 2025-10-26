import 'package:flutter/material.dart';

class InputDataPage extends StatelessWidget {
  const InputDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data Produksi'),
        backgroundColor: Colors.pink[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'No Pesanan',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Nama Customer',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Model',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Qty',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Tenggat',
              ),
            ),
            const SizedBox(height: 20),
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
