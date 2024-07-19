// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:learn_riverpod/pages/learn_river_pod/widgets/api_call_widget.dart';
import 'package:learn_riverpod/pages/learn_river_pod/widgets/todo_list.dart';

import 'widgets/counter_widget.dart';

class LearnRiverpodPage extends StatelessWidget {
  const LearnRiverpodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CounterWidget(),
            SizedBox(
              height: mediaQuery.size.height * 0.3,
              child: const TodoListWidget(),
            ),
            const ApiCallWidget(),
          ],
        ),
      ),
    );
  }
}
