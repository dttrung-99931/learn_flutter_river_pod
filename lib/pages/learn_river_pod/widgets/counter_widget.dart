// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/pages/learn_river_pod/widgets/section.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_widget.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void ins() {
    state = state + 1;
  }
}

class CounterWidget extends ConsumerWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int count = ref.watch(counterProvider);

    return Section(
      title: 'Counter',
      child: Column(
        children: [
          Text(count.toString()),
          IconButton(
            onPressed: () {
              ref.read(counterProvider.notifier).ins();
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
