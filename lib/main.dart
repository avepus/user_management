import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:user_management/pages/account_page.dart';
import 'package:user_management/pages/login_page.dart';
import 'package:user_management/pages/splash_page.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://mbffuypcxummhhrxrijq.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1iZmZ1eXBjeHVtbWhocnhyaWpxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk4NDkyMDUsImV4cCI6MjAxNTQyNTIwNX0.8J5ZPeSNoJ0HJFCjw-mFzTp9nqFrGR4rjWa5BEA-NQE',
  );
  runApp(MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
