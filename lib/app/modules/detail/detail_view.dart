import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final book = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text(book['title'])),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(book['image'], height: 150),
            const SizedBox(height: 16),
            Text(book['title'], style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Penulis: ${book['author']}'),
            const SizedBox(height: 10),
            Text('Genre: ${book['genre']}'),
            const SizedBox(height: 20),
            Text(book['description']),
          ],
        ),
      ),
    );
  }
}