import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final produk = [
      {'nama': 'Baju Atasan', 'harga': 'Rp. 50.000'},
      {'nama': 'Celana', 'harga': 'Rp. 100.000'},
      {'nama': 'Daster', 'harga': 'Rp. 40.000'},
      {'nama': 'One set', 'harga': 'Rp. 100.000'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.pink[100],
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.png'),
                    radius: 25,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Selamat Datang!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text("Siap mengelola jadwal produksi hari ini!"),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: produk.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/produk.png', height: 70),
                        const SizedBox(height: 10),
                        Text(produk[index]['nama']!,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        Text(produk[index]['harga']!),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            minimumSize: const Size(80, 30),
                          ),
                          onPressed: () {},
                          child: const Text("Pesan"),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
