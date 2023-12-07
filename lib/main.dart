import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:chatapp/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    // TODO: Replace credentials with your own
    url: 'https://lktlwxgrngrpqspqmbuy.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxrdGx3eGdybmdycHFzcHFtYnV5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDE4ODYxMDEsImV4cCI6MjAxNzQ2MjEwMX0.WyScN8Zw6J6X1S1hjQLv58VburIXFIO1CF0xeeKPJGA',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
