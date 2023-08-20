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
            int last = numberProviderModel.numbers.last;
            setState(() {
              numberProviderModel.numbers.add(last + 1);
            });
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
              Text(numberProviderModel.numbers.last.toString()),
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