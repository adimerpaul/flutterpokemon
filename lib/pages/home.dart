import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  List pokemons = [];

  @override
  void initState() {
    pokemon150Get();
    super.initState();
  }
  pokemon150Get() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=151');
    var response = await http.get(url);
    var body = json.decode(response.body);
    setState(() {
      pokemons = body['results'];
    });
    print(pokemons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png',
              width: 50,
              height: 50,
            ),
            title: Text(pokemons[index]['name']),
          );
        },
      ),
      // body: Row(
      //   children: [
      //     Flexible(
      //       child: Container(
      //         color: Colors.red,
      //       ),
      //     ),
      //     Flexible(
      //       flex: 2,
      //       child: Container(
      //         color: Colors.blue,
      //       ),
      //     )
      //   ],
      // ),
      // body: Column(
      //   children: [
      //     ElevatedButton(
      //         onPressed: () {
      //           setState(() {
      //             items.add('Item ${items.length + 1}');
      //           });
      //         },
      //         child: const Text('Add Item')
      //     ),
      //     Expanded(
      //       child: ListView.builder(
      //         itemCount: items.length,
      //         itemBuilder: (context, index) {
      //           return ListTile(
      //             title: Text(items[index]),
      //           );
      //         },
      //       ),
      //     )
      //   ],
      // ),
      // ListView(
      //   children: [
      //     Text('Item A'),
      //     Text('Item B'),
      //     Text('Item Z'),
      //   ],
      // )
    );
  }
}
