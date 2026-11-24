import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'JIBBY',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 42,
                    // backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('aa/IMG_1935.jpg'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStatColumn('3', 'โพสต์'),
                        _buildStatColumn('534', 'ผู้ติดตาม'),
                        _buildStatColumn('332', 'กำลังติดตาม'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Darat Tookohpluk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'เด็กเซร๊าะกราวบ้านเอ็ง',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'ติดตาม',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'ข้อความ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Divider(height: 1, color: Colors.black12),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.grid_on, color: Colors.black, size: 26),
                  Icon(Icons.person_pin_outlined, color: Colors.grey[600], size: 26),
                ],
              ),
            ),
            const Divider(height: 1, color: Colors.black12),

// 6. ส่วนแสดงภาพประกอบ 3 ภาพ (ใช้ภาพจากลิงก์บนอินเทอร์เน็ต)
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKFZ6AS12bkBHUockx65HV52uv9uhZi_JFAecQ1DP_bA&s=10',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSqJW7xQj512a2Z4yJ_SyqS_VKodU3p04EZ9AwdNqkpA&s=10',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      'https://www.google.com/imgres?q=%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%95%E0%B8%B9%E0%B8%99%E0%B8%99%E0%B9%88%E0%B8%B2%E0%B8%A3%E0%B8%B1%E0%B8%81&imgurl=https%3A%2F%2Fi.pinimg.com%2F736x%2Fb2%2F81%2Ff8%2Fb281f8ff13b7d9017b4a25ec07f41100.jpg&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fnnnaruethai%2F%25E0%25B8%2581%25E0%25B8%25B2%25E0%25B8%25A3%25E0%25B8%2595%25E0%25B8%2599%25E0%25B8%259C%25E0%25B8%25AB%25E0%25B8%258D%25E0%25B8%2587%25E0%25B8%2599%25E0%25B8%25B2%25E0%25B8%25A3%25E0%25B8%2581%25E0%25B9%2586%2F&docid=eo4Y5qk8_eE3tM&tbnid=apkXytmf0Dp19M&vet=12ahUKEwjKu_7qnJ2YAxUqTGwGHb84CykQnPAOegQIIRAA..i&w=650&h=651&hcb=2&ved=2ahUKEwjKu_7qnJ2YAxUqTGwGHb84CykQnPAOegQIIRAA',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildStatColumn(String count, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
