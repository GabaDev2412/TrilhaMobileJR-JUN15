//lib/widgets/task_item.dart
import 'package:flutter/material.dart';
import '../styles/themes_utils.dart';
import '../utils/theme_provider.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final VoidCallback onToggleComplete;
  final VoidCallback onDelete;

  const TaskItem({
    super.key,
    required this.title,
    required this.isCompleted,
    required this.onToggleComplete,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final onSecondaryContainer = getOnSecondaryContainer(context);
    final secondary = getSecondary(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: secondary, width: 2),
      ),
      child: Row(
        children: [
          Checkbox(
            activeColor: onSecondaryContainer,
            checkColor: secondary,
            value: isCompleted,
            onChanged: (_) => onToggleComplete(),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                decoration: isCompleted ? TextDecoration.lineThrough : null,
                decorationColor: secondary,
                decorationThickness: 3,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete,
            ),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
