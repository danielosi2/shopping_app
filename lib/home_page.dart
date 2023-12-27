import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const ['All', 'Addidas', 'Nike', 'Bata'];
  late String SelectedFilter;

  @override
  void initState() {
    super.initState();
    SelectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const boder = OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
      borderSide: BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
    );
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Shoes\nCollection',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: boder,
                    enabledBorder: boder,
                    focusedBorder: boder,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              itemBuilder: (context, index) {
                final filter = filters[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedFilter = filter;
                      });
                    },
                    child: Chip(
                      backgroundColor: SelectedFilter == filter ? Theme.of(context).colorScheme.primary : Color.fromARGB(255, 222, 228, 235),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 222, 231, 240),
                      ),
                      label: Text(
                        filter,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
