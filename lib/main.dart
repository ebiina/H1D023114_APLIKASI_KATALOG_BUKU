import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Katalog Buku Digital',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFC65C69),
          secondary: Color(0xFFD78289),
          surface: Color(0xFFFFF6F6),
        ),
        scaffoldBackgroundColor: Color(0xFFFFF6F6),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFC65C69),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Color(0xFFFFF6F6),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
    );
  }
}
