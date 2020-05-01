class Task {
  String name;
  bool isComplete;

  //Default property to false as tasks are not done
  Task({this.name, this.isComplete = false});

  void toggleComplete() {
    isComplete = !isComplete;
  }
}
