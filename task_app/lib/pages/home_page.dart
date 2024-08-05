//lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/task_provider.dart';
import '../utils/theme_provider.dart';
import '../utils/constants.dart';
import '../styles/themes_utils.dart';
import '../widgets/list_task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final primaryColor = getPrimaryColor(context);
    final onPrimaryContainer = getOnPrimaryContainer(context);
    final onSecondaryContainer = getOnSecondaryContainer(context);
    final secondary = getSecondary(context);
    final onSurface = getOnSurface(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle,
            style: TextStyle(
              fontSize: 24,
              color: secondary,
              fontWeight: FontWeight.bold,
            )
        ),
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: themeProvider.isDarkMode ? onSurface : primaryColor,
              size: 30,
            ),
            onPressed: () {
              themeProvider.setThemeMode(
                  themeProvider.themeMode == ThemeMode.dark
                      ? ThemeMode.light
                      : ThemeMode.dark);
            },
          ),
        ],
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          return Column(
            children: [
              Expanded(
                child: ListTask(
                  tasks: taskProvider.tasks,
                  onToggleComplete: (index) {
                    taskProvider.toggleCompleteTask(index);
                  },
                  onDelete: (index) {
                    taskProvider.deleteTask(index);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: onPrimaryContainer,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: secondary, width: 2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(color: secondary, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: secondary, width: 2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: 'Enter a task',
                        ),
                        cursorColor: secondary,
                        onSubmitted: (value) {
                          if (value.isNotEmpty) {
                            Provider.of<TaskProvider>(context, listen: false).addTask(value);
                            _controller.clear();
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      backgroundColor: secondary,
                      foregroundColor: onSecondaryContainer,
                      onPressed: () {
                        final text = _controller.text.trim();
                        if (text.isNotEmpty) {
                          Provider.of<TaskProvider>(context, listen: false).addTask(text);
                          _controller.clear();
                        }
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
