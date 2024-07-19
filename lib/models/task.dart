// ignore_for_file: public_member_api_docs, sort_constructors_first
enum TaskStatus { created, doing, completed, pending }

class Task {
  final TaskStatus status;
  final String title;
  final String detail;
  Task({
    required this.status,
    required this.title,
    required this.detail,
  });

  static List<Task> get dumy => [
        Task(
          status: TaskStatus.completed,
          title: 'Learn riverpod',
          detail: 'provider',
        ),
        Task(
          status: TaskStatus.completed,
          title: 'Learn riverpod 2',
          detail: 'ref',
        ),
        Task(
          status: TaskStatus.doing,
          title: 'Learn riverpod 2',
          detail: 'ref.watch',
        ),
        Task(
          status: TaskStatus.doing,
          title: 'Learn riverpod 2',
          detail: 'ref.read',
        ),
        Task(
          status: TaskStatus.created,
          title: 'Learn riverpod 2',
          detail: 'ref.listen',
        )
      ];
}
