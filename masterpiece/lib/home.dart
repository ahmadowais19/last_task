import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // مسارات الصور
  final List<String> productImages = [
    'assets/images/Pipe.png',
    'assets/images/Pipe.png',
    'assets/images/Pipe.png',
    'assets/images/Pipe.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 126, 176, 218),
        title: Row(
          children: [
            Image.asset('assets/images/logo.png', height: 50, width: 50),
            const SizedBox(width: 10),
            const Text('Home'),
          ],
        ),
      ),
      body: Column(
        children: [
          // حقل البحث
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search for services...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage('assets/images/Pipe.png'),
            height: 100,
            width: 100,
          ),

          // شبكة المنتجات
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: productImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 3 / 2,
              ),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      productImages[index],
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
          ),

          // الأزرار
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: const Text("Go to Signup"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text("Go to Login"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
