import 'package:flutter/material.dart';

import 'custom_search_delegate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Implementation'),
        leading: const Icon(Icons.arrow_back_ios_new),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(
              Icons.search,
              size: 28.0,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Implementing Search Feature using CustomSearchDelegate.',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
