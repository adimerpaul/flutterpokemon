import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Row(
        children: [
          Flexible(
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
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
