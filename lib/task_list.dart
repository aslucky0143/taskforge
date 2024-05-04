class TaskList {
  String taskTitle = "New Task";
  String taskDescription = "This is a new task that needs to be completed.";
  DateTime taskTimeDate = DateTime.now();
  void setTask(String title, String desc, DateTime dateTime) {
    taskTitle = title;
    taskDescription = desc;
    taskTimeDate = dateTime;
  }
}
