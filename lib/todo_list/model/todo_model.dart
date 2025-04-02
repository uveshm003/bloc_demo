class Todo {
  final String taskName;
  final DateTime createdAt;

  Todo({required this.taskName, required this.createdAt});

  @override
  String toString() {
    return '{Name: $taskName , Created At: ${createdAt.toIso8601String()}}';
  }


}
