import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:pmvvm_flutter/ui/viewmodels/my_viewmodel.dart';

class MyView extends StatelessView<MyViewModel> {
  const MyView({super.key, reactive = true});
  @override
  Widget render(context, viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador con PMVVM'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.increase,
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Text(
            viewModel.counter.toString(),
            style: const TextStyle(fontSize: 28),
          )),
        ],
      ),
    );
  }
}
