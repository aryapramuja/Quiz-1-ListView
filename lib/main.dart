import 'package:flutter/material.dart';

void main() {
  runApp(const QuizListViewApp());
}

class QuizListViewApp extends StatelessWidget {
  const QuizListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz 1 ListView TI23K1 - Arya - 202511024',
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  final List<Map<String, String>> questions = const [
    {
      'question': '1. Jelaskan perbedaan antara DART dan FLUTTER!',
      'answer': 
        'Dart merupakan bahasa pemrograman general-purpose yang digunakan untuk menulis kode pada Flutter.\n'
        'Flutter merupakan Software Development Kit (SDK) dari Google yang menggunakan Dart sebagai bahasa pemrograman untuk membuat aplikasi yang dapat berjalan di berbagai platform.',
    },
    {
      'question': '2. Jelaskan sejarah Flutter!',
      'answer': 
        'Flutter awalnya bernama Sky yang diumumkan pada Dart Developer Summit 2015 yang hanya berjalan pada sistem operasi android. Barulah pada 3 Maret 2021 Flutter mengumumkan versi Flutter 2 yang memungkinkan untuk platform web dan dekstop (Windows, Linux maupun MacOS).',
    },
    {
      'question': '3. Sebutkan komponen Layout pada Flutter yang biasa digunakan dan jelaskan kegunaannya!',
      'answer': 
        '- Row: Menyusun widget secara horizontal atau baris.\n'
        '- Column: Menyusun widget secara vertikal atau kolom.\n'
        '- Container: Wadah fleksibel untuk styling (margin, padding, warna, dll).\n'
        '- Stack: Menumpuk beberapa widget di atas satu sama lain.\n'
        '- ListView: Menampilkan data yang dapat di-scroll.', 
    },
    {
      'question': '4. Sebutkan elemen child pada list!',
      'answer': 
        'Elemen child pada ListView biasanya berupa widget seperti:\n'
        '- Container()\n'
        '- Text()\n'
        '- Card()\n'
        '- ListTile()\n'
        '- Image() / Image.asset() / Image.network()\n'
        '- Row() / Column()\n'
        '- Icon()',
    },
    {
      'question': '5. Menurut anda, apa saja yang perlu diperhatikan oleh seorang desainer saat merancang desain aplikasi mobile?',
      'answer': 
        '- Hormati data yang dimasukkan pengguna\n'
        '- Sadarilah ponsel itu milik pribadi\n'
        '- Pastikan kehidupan diprioritaskan\n'
        '- Harus berfungsi dalam semua konteks\n'
        '- Gunakan sensor dan kecerdasan pengguna\n'
        '- Utamakan tugas pengguna\n'
        '- Konsistensi\n'
        '- Hormati Informasi',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QUIZ 1 TI23K1'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: questions.length,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(questions[index]['question']!),
            subtitle: Text(questions[index]['answer']!),
          );
        },
      ),
    );
  }
}
