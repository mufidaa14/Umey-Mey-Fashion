import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final PageController pageController;
  const LoginScreen({super.key, required this.pageController});

  // Widget untuk TextField yang lebih modern
  Widget _buildAuthInputField({
    required String hintText,
    required IconData icon,
    bool isObscure = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5), // Abu-abu sangat lembut
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
            ),
        ],
      ),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
          prefixIcon: Icon(icon, color: Colors.grey[500], size: 20),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          isDense: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Gunakan Scaffold agar background putih bersih
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0), // Padding lebih lega
        child: Center(
          child: SingleChildScrollView( // Agar aman di layar kecil
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Header Image/Icon (Opsional, tapi bagus untuk layout)
                // const Icon(Icons.lock_person_outlined, size: 60, color: Color(0xFFF85C5C)),
                // const SizedBox(height: 20),

                const Text(
                  'Hello Again!',
                  style: TextStyle(
                    fontSize: 32, // Lebih besar
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333), // Hitam pekat tapi tidak #000
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Welcome back you\'ve been missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600], // Abu-abu lembut
                    height: 1.5, // Spasi baris lebih enak dibaca
                  ),
                ),
                const SizedBox(height: 50),

                _buildAuthInputField(
                  hintText: 'User Name',
                  icon: Icons.person_outline_rounded,
                ),
                const SizedBox(height: 20), // Spasi antar input
                _buildAuthInputField(
                  hintText: 'Password',
                  icon: Icons.lock_outline_rounded,
                  isObscure: true,
                ),

                const SizedBox(height: 15),
                // Lupa Password (Opsional, tapi umum di login)
                // Align(alignment: Alignment.centerRight, child: ...),

                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/main');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF85C5C),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 5, // Shadow halus
                      shadowColor: const Color(0xFFF85C5C).withOpacity(0.4),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member? ',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(
                          1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Text(
                        'Register now',
                        style: TextStyle(
                          color: Color(0xFFF85C5C), // Konsisten dengan warna tombol
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}