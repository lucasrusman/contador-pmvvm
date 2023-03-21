import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:pmvvm_flutter/ui/viewmodels/my_viewmodel.dart';
import 'package:pmvvm_flutter/ui/views/my_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MVVM<MyViewModel>(
      view: () => const MyView(),
      viewModel: MyViewModel(),
    );
  }
}
