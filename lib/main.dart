import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product.dart';
import 'product_list.dart';
import 'cart_model.dart';
import 'cart_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: "Running Shoes",
      price: 50.0,
      image: "assets/shoe1.jpg",
      description: "Comfortable and lightweight running shoes.",
      rating: 4.5,
      specifications: [
        "Material: Mesh",
        "Sole: Rubber",
        "Weight: 250g",
        "Colors: Red, Blue, Black",
      ],
      reviews: [
        "John Doe: Very comfortable and stylish!",
        "Jane Smith: Perfect for my daily runs.",
      ],
      faqs: [
        "Q: Are these shoes true to size?",
        "A: Yes, they fit as expected.",
        "Q: Can I use them for hiking?",
        "A: They are best suited for running.",
      ],
    ),
    Product(
      name: "Basketball Shoes",
      price: 70.0,
      image: "assets/shoe2.jpg",
      description: "High-top shoes with great ankle support.",
      rating: 4.7,
      specifications: [
        "Material: Leather",
        "Sole: Rubber",
        "Weight: 300g",
        "Colors: White, Black",
      ],
      reviews: [
        "Alice: Great ankle support and comfortable.",
        "Bob: Excellent shoes for playing basketball.",
      ],
      faqs: [
        "Q: Are these shoes suitable for outdoor courts?",
        "A: Yes, they have a durable sole.",
        "Q: Do they come in different widths?",
        "A: They are available in standard width.",
      ],
    ),
    Product(
      name: "Casual Sneakers",
      price: 40.0,
      image: "assets/shoe3.jpg",
      description: "Stylish sneakers for everyday wear.",
      rating: 4.3,
      specifications: [
        "Material: Canvas",
        "Sole: Rubber",
        "Weight: 200g",
        "Colors: White, Black, Grey",
      ],
      reviews: [
        "Charlie: Looks great and feels comfortable.",
        "Diana: Perfect for casual outings.",
      ],
      faqs: [
        "Q: Are these sneakers waterproof?",
        "A: No, they are not waterproof.",
        "Q: Can I wash them in a machine?",
        "A: Yes, but use a gentle cycle.",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductList(products: products),
      routes: {
        '/cart': (context) => CartScreen(),
      },
    );
  }
}
