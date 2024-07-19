// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/models/task.dart';
import 'package:learn_riverpod/pages/learn_river_pod/widgets/section.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_list.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  List<Task> build() {
    return Task.dumy;
  }
}

@riverpod
class TaskStatusFilter extends _$TaskStatusFilter {
  @override
  TaskStatus build() {
    return TaskStatus.created;
  }

  void changeStatus(TaskStatus status) {
    state = status;
  }
}

@riverpod
List<Task> filterTasks(FilterTasksRef ref) {
  TaskStatus filterStatus = ref.watch(taskStatusFilterProvider);
  List<Task> tasks = ref.watch(todoListProvider);
  return tasks.where((element) => element.status == filterStatus).toList();
}

class TodoListWidget extends ConsumerWidget {
  const TodoListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Directly get list of tasks
    // List<Task> filteredTasks = ref.watch(filterTasksProvider);

    // Select task title that mean that re-build hanpending when the select values changed (titles)
    List<String> filteredTaskTitles = ref.watch(
      filterTasksProvider.select((value) => value.map((e) => e.title).toList()),
    );
    return Section(
      title: 'TodoList',
      expandChild: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButton<TaskStatus>(
            value: ref.watch(taskStatusFilterProvider),
            items: TaskStatus.values.map(
              (status) {
                return DropdownMenuItem<TaskStatus>(
                  value: status,
                  child: Text(status.name),
                );
              },
            ).toList(),
            onChanged: (TaskStatus? status) {
              if (status != null) {
                ref.read(taskStatusFilterProvider.notifier).changeStatus(status);
              }
            },
          ),
          Expanded(
            child: ListView(
              children: filteredTaskTitles
                  .map(
                    (title) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(title),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
