import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> fruits = [
    'apple',
    'banana',
    'cherry',
    'date',
    'elderberry',
    'fig',
    'grape',
    'kiwi',
    'lemon',
    'mango',
    'nectarine',
    'orange',
    'pear',
    'quince',
    'raspberry',
    'strawberry',
    'tangerine',
    'watermelon',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<String> result = [];
    for (var fruit in fruits) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        result.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: result.length,
      itemBuilder: (context, index) {
        var res = result[index];
        return ListTile(
          title: Text(res),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> result = [];
    for (var fruit in fruits) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        result.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: result.length,
        itemBuilder: (context, index) {
          var res = result[index];
          return ListTile(
            title: Text(res),
          );
        });
  }
}
