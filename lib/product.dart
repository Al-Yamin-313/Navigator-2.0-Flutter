import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String text;
  final VoidCallback onHome;

  const ProductPage({
    super.key,
    required this.text,
    required this.onHome,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              text.isEmpty
                  ? "Nothing Received"
                  : text,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: onHome,
              child: const Text("Go Back Home"),
            ),
          ),
        ],
      ),
    );
  }
}