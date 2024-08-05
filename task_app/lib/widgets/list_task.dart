//lib/widgets/list_task.dart
import 'package:flutter/material.dart';
import 'task_item.dart';

class ListTask extends StatelessWidget {
  final List<Map<String, dynamic>> tasks;
  final Function(int) onToggleComplete;
  final Function(int) onDelete;

  const ListTask({
    super.key,
    required this.onToggleComplete,
    required this.tasks,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskItem(
          title: tasks[index]['title'],
          isCompleted: tasks[index]['isCompleted'],
          onToggleComplete: () => onToggleComplete(index),
          onDelete: () => onDelete(index),
        );
      },
    );
  }
}
