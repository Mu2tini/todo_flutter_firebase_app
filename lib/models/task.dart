
import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'task.jser.dart';

class Task {
  String task;
  bool isDone;

  Task({this.task, this.isDone});
}

@GenSerializer()
class TaskSerializer extends Serializer<Task>
    with _$TaskSerializer {}