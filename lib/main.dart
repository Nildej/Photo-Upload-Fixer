import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoUploadFixerApp());
}

class PhotoUploadFixerApp extends StatelessWidget {
  const PhotoUploadFixerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Upload Fixer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF246BFD),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Upload Fixer'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 35),
            const Icon(
              Icons.photo_size_select_large,
              size: 85,
              color: Color(0xFF246BFD),
            ),
            const SizedBox(height: 24),
            const Text(
              'آماده‌سازی عکس برای آپلود',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              'حجم و ابعاد عکس‌هایت را برای ارسال در سایت‌ها تنظیم کن.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 35),
            FilledButton.icon(
              onPressed: null,
              icon: const Icon(Icons.add_photo_alternate),
              label: const Text('انتخاب عکس'),
            ),
            const SizedBox(height: 22),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'امکانات برنامه:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 14),
                    Text('✓ کاهش حجم عکس تا اندازه دلخواه'),
                    SizedBox(height: 10),
                    Text('✓ تغییر ابعاد عکس'),
                    SizedBox(height: 10),
                    Text('✓ تبدیل فرمت عکس به JPG'),
                    SizedBox(height: 10),
                    Text('✓ ذخیره و اشتراک‌گذاری عکس'),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Photo Upload Fixer - Version 1.0',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
