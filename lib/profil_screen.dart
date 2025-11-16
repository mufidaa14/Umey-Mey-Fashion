import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Widget untuk menampilkan data identitas
  Widget _buildProfileInfo({
    required String label,
    required String value,
    IconData? icon,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              if (icon != null) ...[
                Icon(icon, size: 20, color: Colors.black),
                const SizedBox(width: 10),
              ],
              Text(
                value,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          const Divider(height: 10),
        ],
      ),
    );
  }

  // Widget untuk bagian info kontak
  Widget _buildContactInfo({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: Colors.black),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Bagian header / foto profil
  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFFCE4EC),
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.pink.shade300,
                width: 3,
              ),
              image: const DecorationImage(
                image: AssetImage('assets/woman.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: const Color(0xFFFCE4EC),
      elevation: 0,
      leading: Navigator.canPop(context)
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            )
          : null,
      title: const Text(
        "Profil",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ),

    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context),

          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Identitas",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Divider(thickness: 2, color: Colors.black),

                SizedBox(height: 10),

                Text("Nama Lengkap",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(height: 5),
                Text(
                  "Royhatul Jannatul Mufida",
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Divider(height: 20),

                Text("Jenis Kelamin",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(height: 5),
                Text(
                  "Perempuan",
                  style: TextStyle(fontSize: 18),
                ),
                Divider(height: 20),

                SizedBox(height: 30),

                Text(
                  "Kontak",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Divider(thickness: 2, color: Colors.black),

                SizedBox(height: 15),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                _buildContactInfo(
                  icon: Icons.mail_outline,
                  label: "Alamat Email",
                  value: "fdaate14@gmail.com",
                ),
                _buildContactInfo(
                  icon: Icons.phone_android,
                  label: "Handphone",
                  value: "087*********",
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}