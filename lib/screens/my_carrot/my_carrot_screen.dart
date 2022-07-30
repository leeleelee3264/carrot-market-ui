import 'package:carrot_market_ui/screens/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('나의 당근'),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          const SizedBox(height: 8.0),
          const SizedBox(height: 8.0),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
