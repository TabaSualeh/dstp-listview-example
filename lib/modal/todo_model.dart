class Todo {
  String title;
  String? description;
  DateTime? dateTime;
  int? day;
  bool? isCompleted;

  Todo({required this.title, this.description, this.isCompleted = false, DateTime? dateTime, int? day}) {
    this.dateTime = dateTime ?? DateTime.now();
    this.day = day ?? DateTime.now().day;
  }
}
