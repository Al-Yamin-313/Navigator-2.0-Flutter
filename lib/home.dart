import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onDashboard;

  const HomePage({
    super.key,
    required this.onDashboard,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          const Center(
            child: Text(
              "Home Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: onDashboard,
              child: const Text("Go to Dashboard"),
            ),
          ),
        ],
      ),
    );
  }
}