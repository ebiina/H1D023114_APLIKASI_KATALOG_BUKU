import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import 'widgets/book_card.dart';
import '../../routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(HomeController());

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFC65C69),
        title: const Text(
          "Katalog Buku Digital",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 4,
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFFFF0F2),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFCE6F79), Color(0xFFD78289)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Text(
                  'Menu Navigasi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            _drawerItem(Icons.home, "Home", () => Get.toNamed(Routes.HOME)),
            _drawerItem(Icons.category, "Genre Buku", () => Get.toNamed(Routes.GENRE)),
            _drawerItem(Icons.info_outline, "Tentang", () => Get.toNamed(Routes.ABOUT)),
            _drawerItem(Icons.contact_mail, "Kontak", () => Get.toNamed(Routes.CONTACT)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Obx(() {
          return ListView.separated(
            itemCount: c.books.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final book = c.books[index];
              return BookCard(
                title: book['title']!,
                author: book['author']!,
                imageUrl: book['image']!,
                onTap: () => Get.toNamed(Routes.DETAIL, arguments: book),
              );
            },
          );
        }),
      ),
    );
  }

  // 🔹 Custom drawer item biar gak berulang-ulang
  Widget _drawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFFC65C69)),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xFF333333),
        ),
      ),
      onTap: onTap,
      hoverColor: const Color(0xFFFFE4E8),
    );
  }
}
