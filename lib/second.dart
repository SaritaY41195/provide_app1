import 'package:flutter/material.dart';
import 'package:provide_app1/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Last Conunter ${numberProviderModel.numbers.last.toString()}",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: numberProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numberProviderModel.numbers[index].toString(),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
