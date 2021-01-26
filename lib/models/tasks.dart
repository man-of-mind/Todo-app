class Tasks {
  bool isDone;
  final String name;
  Tasks({this.name, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}
