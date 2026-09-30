class Todo {
  String title;
  String? description;
  DateTime dateTime;
  bool? isCompleted;

  Todo({
    required this.title,
    this.description,
    this.isCompleted = false,
    required this.dateTime,
  });
}
