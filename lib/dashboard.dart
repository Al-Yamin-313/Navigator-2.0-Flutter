import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final Function(String) onProduct;

  const DashboardPage({
    super.key,
    required this.onProduct,
  });

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String enteredText = "";

  void showInputDialog() {
    final controller = TextEditingController(text: enteredText);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Enter Something"),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: "Write here",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  enteredText = controller.text;
                });
                Navigator.pop(context);
              },
              child: const Text("Done"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: showInputDialog,
                  child: const Text("Open Dialog"),
                ),
                const SizedBox(height: 20),
                Text(
                  enteredText.isEmpty
                      ? "No text entered"
                      : enteredText,
                  style: const TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: () {
                widget.onProduct(enteredText);
              },
              child: const Text("Go to Product"),
            ),
          ),
        ],
      ),
    );
  }
}