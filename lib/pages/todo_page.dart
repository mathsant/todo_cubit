import 'package:flutter/material.dart';
import 'package:todo_cubit/widgets/create_todo.dart';
import 'package:todo_cubit/widgets/search_and_filter_todo.dart';
import 'package:todo_cubit/widgets/show_todos.dart';
import 'package:todo_cubit/widgets/todo_header.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                TodoHeader(),
                SizedBox(height: 10),
                CreateTodo(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Divider(color: Colors.black),
                ),
                SearchAndFilterTodo(),
                ShowTodos(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
