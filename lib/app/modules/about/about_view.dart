import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F6),
      appBar: AppBar(
        title: const Text("Tentang Perpustakaan"),
        backgroundColor: const Color(0xFFC65C69),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/2972/2972517.png",
                width: 150,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Tentang Kami",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFCE6F79),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Perpustakaan Digital ini hadir untuk memudahkan pecinta buku dalam menjelajahi dunia literasi tanpa batas. "
              "Kami menyediakan koleksi digital dari berbagai genre — mulai dari fiksi, sastra klasik, hingga motivasi modern. "
              "Setiap buku adalah jendela baru menuju imajinasi dan pengetahuan.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                height: 1.5,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFE0959C),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "“Membaca adalah perjalanan jiwa tanpa batas waktu.”",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
