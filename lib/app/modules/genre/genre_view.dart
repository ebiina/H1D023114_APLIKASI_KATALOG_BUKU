import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenreView extends StatelessWidget {
  const GenreView({super.key});

  @override
  Widget build(BuildContext context) {
    final genres = [
      {'icon': Icons.favorite, 'name': 'Romansa', 'color1': const Color(0xFFD78289), 'color2': const Color(0xFFE0959C)},
      {'icon': Icons.auto_stories, 'name': 'Fiksi', 'color1': const Color(0xFFE0959C), 'color2': const Color(0xFFCE6F79)},
      {'icon': Icons.psychology, 'name': 'Filsafat', 'color1': const Color(0xFFC65C69), 'color2': const Color(0xFFD78289)},
      {'icon': Icons.public, 'name': 'Sastra Dunia', 'color1': const Color(0xFFCE6F79), 'color2': const Color(0xFFE0959C)},
      {'icon': Icons.child_care, 'name': 'Anak-anak', 'color1': const Color(0xFFE0959C), 'color2': const Color(0xFFD78289)},
      {'icon': Icons.lightbulb, 'name': 'Motivasi', 'color1': const Color(0xFFD78289), 'color2': const Color(0xFFC65C69)},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFF7F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFC65C69),
        title: const Text(
          "Genre Buku",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: GridView.builder(
          itemCount: genres.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14,
            childAspectRatio: 1.05,
          ),
          itemBuilder: (context, index) {
            final genre = genres[index];
            return _buildGenreCard(
              icon: genre['icon'] as IconData,
              title: genre['name'] as String,
              color1: genre['color1'] as Color,
              color2: genre['color2'] as Color,
            );
          },
        ),
      ),
    );
  }

  Widget _buildGenreCard({
    required IconData icon,
    required String title,
    required Color color1,
    required Color color2,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1.withOpacity(0.95), color2.withOpacity(0.9)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color1.withOpacity(0.25),
              blurRadius: 6,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 40, color: Colors.white),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
