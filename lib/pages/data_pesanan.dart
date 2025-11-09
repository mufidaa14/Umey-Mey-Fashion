import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';

class DataPesananPage extends StatelessWidget {
  const DataPesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Pesanan'),
        backgroundColor: Colors.pink[200],
      ),
      bottomNavigationBar: const BottomNavBar(selectedIndex: 0),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink[200],
                child: const Text('1'),
              ),
              title: const Text('Bu Kiky'),
              subtitle: const Text('Baju Atasan\n26-10-2025'),
              trailing: const Text('25 pcs'),
            ),
            const Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pink[200],
                child: const Text('2'),
              ),
              title: const Text('Pak Hamid'),
              subtitle: const Text('Celana\n05-11-2025'),
              trailing: const Text('3 pcs'),
            ),
          ],
        ),
      ),
    );
  }
}
