import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      {'icon': Icons.email, 'label': 'Email', 'value': 'info@perpusdigital.com'},
      {'icon': Icons.phone, 'label': 'Telepon', 'value': '+62 812-3456-7890'},
      {'icon': Icons.location_on, 'label': 'Alamat', 'value': 'Jl. Literasi No. 45, Bandung'},
      {'icon': Icons.web, 'label': 'Website', 'value': 'www.perpusdigital.com'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F6),
      appBar: AppBar(
        title: const Text("Kontak Kami"),
        backgroundColor: const Color(0xFFC65C69),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(Icons.support_agent,
                  size: 80, color: Color(0xFFD78289)),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                "Hubungi Kami",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFCE6F79),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ...contacts.map((contact) => Card(
                  elevation: 3,
                  shadowColor: const Color(0xFFD78289).withOpacity(0.3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(contact['icon'] as IconData,
                        color: const Color(0xFFC65C69)),
                    title: Text(contact['label'] as String,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFCE6F79))),
                    subtitle: Text(contact['value'] as String),
                  ),
                )),
            const Spacer(),
            Center(
              child: Text(
                "© 2025 Perpustakaan Digital",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
