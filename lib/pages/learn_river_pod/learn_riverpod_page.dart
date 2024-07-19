// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:learn_riverpod/pages/learn_river_pod/widgets/todo_list.dart';

import 'widgets/counter_widget.dart';

class LearnRiverpodPage extends StatelessWidget {
  const LearnRiverpodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CounterWidget(),
          Flexible(child: TodoListWidget()),
        ],
      ),
    );
  }
}
