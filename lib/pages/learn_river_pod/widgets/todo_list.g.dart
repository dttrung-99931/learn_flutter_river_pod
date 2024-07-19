// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filterTasksHash() => r'c35d9f50c905162dbb21a3c30a0fdef3f34b97aa';

/// See also [filterTasks].
@ProviderFor(filterTasks)
final filterTasksProvider = AutoDisposeProvider<List<Task>>.internal(
  filterTasks,
  name: r'filterTasksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$filterTasksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilterTasksRef = AutoDisposeProviderRef<List<Task>>;
String _$todoListHash() => r'f82534b41e1b202884b1e9608dcab72756f33faa';

/// See also [TodoList].
@ProviderFor(TodoList)
final todoListProvider =
    AutoDisposeNotifierProvider<TodoList, List<Task>>.internal(
  TodoList.new,
  name: r'todoListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoList = AutoDisposeNotifier<List<Task>>;
String _$taskStatusFilterHash() => r'd2951034fec0bd9b98140329ae91de9d2547feba';

/// See also [TaskStatusFilter].
@ProviderFor(TaskStatusFilter)
final taskStatusFilterProvider =
    AutoDisposeNotifierProvider<TaskStatusFilter, TaskStatus>.internal(
  TaskStatusFilter.new,
  name: r'taskStatusFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskStatusFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TaskStatusFilter = AutoDisposeNotifier<TaskStatus>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
