import 'package:flutter/material.dart';
import 'package:provide_app1/list_provider.dart';
import 'package:provide_app1/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numbersProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Counter Increment'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Last Counter  ${numbersProviderModel.numbers.last}",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbersProviderModel.numbers[index].toString(),
                      style: const TextStyle(fontSize: 20),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Second(),
                    ),
                  );
                },
                child: const Text('Click'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
