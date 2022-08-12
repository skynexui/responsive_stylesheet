class Todo {
  final String id;
  final String title;
  final String description;
  final bool completed;
  DateTime createdAt = DateTime.now();
  final DateTime updatedAt;

  Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.updatedAt,
  });
}
