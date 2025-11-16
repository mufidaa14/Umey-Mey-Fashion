import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // AppBar kosong atau hanya berisi Padding
          const SliverAppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            toolbarHeight: 0,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Bagian Banner Ilustrasi
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: AspectRatio(
                    aspectRatio: 1.5, // Mengatur rasio agar mirip gambar
                    child: Stack(
                      children: [
                        // Placeholder Ilustrasi
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFEBF0), // Pink sangat muda
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.pink.shade100)
                          ),
                          child: Center(
                            child: Image.asset(
                                'assets/images/sewing_illustration.png', // Ganti dengan ilustrasi Anda
                                height: 150,
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                        // Pop-up Card "Selamat Datang"
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Color(0xFFF06292),
                                      // Child: Placeholder jika ada logo kecil
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Selamat Datang!',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink[800],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Klik pesan untuk mengajukan produk Anda!',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Bagian Grid Produk
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(), // Nonaktifkan scroll GridView
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0,
                      childAspectRatio: 0.75, // Untuk menampung gambar dan info
                    ),
                    itemCount: 4, // Misalnya 4 produk
                    itemBuilder: (context, index) {
                      final products = [
                        {'name': 'Baju Atasan', 'price': 'Rp. 50.000'},
                        {'name': 'Celana', 'price': 'Rp. 100.000'},
                        {'name': 'Daster', 'price': 'Rp. 60.000'},
                        {'name': 'One set', 'price': 'Rp. 100.000'},
                      ];
                      return _buildProductCard(
                        context,
                        products[index]['name']!,
                        products[index]['price']!,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, String name, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              // Placeholder Gambar Produk
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                // Gambar Produk akan ditempatkan di sini
                image: const DecorationImage(
                  image: AssetImage('assets/images/product_placeholder.png'), // Ganti dengan gambar produk
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                  child: Icon(Icons.shopping_bag_outlined, color: Colors.grey, size: 40)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(price, style: const TextStyle(color: Color(0xFFF06292))),
          ),
          // Tombol Pesan (Bottom Row)
          Container(
            height: 35,
            decoration: const BoxDecoration(
              color: Color(0xFFF85C5C), // Warna merah/pink tombol
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
            child: TextButton(
              onPressed: () {
                // Navigasi ke Detail Pesanan Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPesananScreen(),
                  ),
                );
              },
              child: const Text(
                'Pesan',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}