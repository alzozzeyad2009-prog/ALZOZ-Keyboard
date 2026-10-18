import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALZOZ Store Keyboard',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1A102F),
        primaryColor: const Color(0xFF8B5CF6),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALZOZ Store - لوحة التحكم'),
        backgroundColor: const Color(0xFF2D1B4E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'مرحباً بك يا زوز في لوحة تحكم الكيبورد والأيقونات',
              style: TextStyle(fontSize: 16, color: Color(0xFFC084FC), fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8B5CF6),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('تم تفعيل خدمة الأيقونات بنجاح!')),
                );
              },
              icon: const Icon(Icons.keyboard, color: Colors.white),
              label: const Text('تفعيل الكيبورد والأيقونات العائمة', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6D28D9),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('اختر صورة الأيقونة الجديدة (ببجي/UC/فري فاير)')),
                );
              },
              icon: const Icon(Icons.add_photo_alternate, color: Colors.white),
              label: const Text('إضافة أيقونة جديدة (UC / ببجي / فري فاير)', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4C1D95),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('تم اختيار الخلفية بنجاح!')),
                );
              },
              icon: const Icon(Icons.wallpaper, color: Colors.white),
              label: const Text('تغيير خلفية الكيبورد', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}