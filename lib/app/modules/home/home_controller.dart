import 'package:get/get.dart';

class HomeController extends GetxController {
  var books = [
    {
      'title': 'Laut Bercerita',
      'author': 'Leila S. Chudori',
      'genre': 'Fiksi Sejarah',
      'image': 'assets/images/laut_bercerita.jpg',
      'description':
          'Kisah mendalam tentang kehilangan, cinta, dan perjuangan aktivis di masa kelam Indonesia. Ditulis dengan bahasa yang puitis dan menyentuh hati.',
    },
    {
      'title': 'Seporsi Mie Ayam Sebelum Mati',
      'author': 'Seno Gumira Ajidarma',
      'genre': 'Cerpen & Refleksi Sosial',
      'image': 'assets/images/seporsi_mie.png',
      'description':
          'Kumpulan cerita pendek dengan refleksi sosial dan filosofi hidup yang membumi — sesederhana seporsi mie ayam yang penuh makna.',
    },
    {
      'title': 'The Little Prince',
      'author': 'Antoine de Saint-Exupéry',
      'genre': 'Fabel Filosofis',
      'image': 'assets/images/little_prince.png',
      'description':
          'Sebuah kisah klasik yang lembut dan penuh makna tentang cinta, kehilangan, dan memaknai hidup dengan hati seorang anak kecil.',
    },
  ].obs;
}
