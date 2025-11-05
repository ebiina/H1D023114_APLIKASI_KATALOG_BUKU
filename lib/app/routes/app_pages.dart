import 'package:get/get.dart';
import '../modules/home/home_view.dart';
import '../modules/detail/detail_view.dart';
import '../modules/genre/genre_view.dart';
import '../modules/about/about_view.dart';
import '../modules/contact/contact_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => const HomeView()),
    GetPage(name: Routes.DETAIL, page: () => const DetailView()),
    GetPage(name: Routes.GENRE, page: () => const GenreView()),
    GetPage(name: Routes.ABOUT, page: () => const AboutView()),
    GetPage(name: Routes.CONTACT, page: () => const ContactView()),
  ];
}