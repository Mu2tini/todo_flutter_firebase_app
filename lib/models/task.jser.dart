// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$TaskSerializer implements Serializer<Task> {
  @override
  Map<String, dynamic> toMap(Task model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'task', model.task);
    setMapValue(ret, 'isDone', model.isDone);
    return ret;
  }

  @override
  Task fromMap(Map map) {
    if (map == null) return null;
    final obj = new Task();
    obj.task = map['task'] as String;
    obj.isDone = map['isDone'] as bool;
    return obj;
  }
}
