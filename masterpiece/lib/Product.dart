import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ✅ كلاس البيانات
class Product {
  int id;
  String name;
  String desc;
  double price;
  String imageUrl;
  int categoryId;

  Product(this.id, this.name, this.desc, this.price, this.imageUrl, this.categoryId);
}

// ✅ قائمة المنتجات
List<Product> products = [
  Product(1, "Chair 1", "Chair with arm", 299.00, "assets/images/chair_1.png", 1),
  Product(2, "Chair 2", "Chair with arm", 499.00, "assets/images/chair_1.png", 1),
  Product(3, "Chair 3", "Chair with arm", 399.00, "assets/images/chair_1.png", 1),
];

// ✅ التطبيق الأساسي
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Grid',
      home: Scaffold(
        appBar: AppBar(title: Text('Product List')),
        body: ProductGrid(),
      ),
    );
  }
}

// ✅ ويدجت الشبكة (Grid)
class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
      childAspectRatio: 3 / 4,
      padding: EdgeInsets.all(8),
      children: products.map((product) => ProductCard(product: product)).toList(),
    );
  }
}

// ✅ ويدجت عرض المنتج
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: Image.asset(product.imageUrl, fit: BoxFit.cover)),
            SizedBox(height: 8),
            Text(product.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(product.desc, style: TextStyle(color: Colors.grey[600])),
            Text("\$${product.price}", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
