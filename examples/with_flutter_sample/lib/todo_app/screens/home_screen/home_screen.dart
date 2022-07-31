import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'patterns/todo_list_items.dart';
import './patterns/header.dart';
import './domain/todo/Todo.dart';
import 'patterns/main_action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Todo> todos = [
    Todo(
      id: '1',
      title: 'Buy milk',
      description: 'Milk is needed for the baby',
      completed: false,
      updatedAt: DateTime.now(),
    ),
    Todo(
      id: '2',
      title: 'Buy eggs',
      description: 'Eggs are needed for the baby',
      completed: false,
      updatedAt: DateTime.now(),
    ),
    Todo(
      id: '3',
      title: 'Buy bread',
      description: 'Bread is needed for the baby',
      completed: false,
      updatedAt: DateTime.now(),
    ),
  ];

  createTodo() {
    setState(() {
      todos.add(Todo(
        id: '${todos.length + 1}',
        title: 'New todo ${DateTime.now().toIso8601String()}',
        description: '',
        completed: false,
        updatedAt: DateTime.now(),
      ));
    });
  }

  deleteTodo(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TodoAppTheme(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Todo App (${todos.length})'),
        ),
        body: _HomeScreenBody(
          todos: todos,
          onDeleteTodo: deleteTodo,
        ),
        floatingActionButton: MainActionButton(
          onPressed: createTodo,
        ),
      ),
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  final List<Todo> todos;
  final Function(int) onDeleteTodo;

  const _HomeScreenBody({
    Key? key,
    required this.todos,
    required this.onDeleteTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var responsive = Responsive(context);
    return Container(
      width: responsive.screenWidth.percent(100),
      color: Colors.grey.shade100,
      child: GridItem(
        as: Column,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Header(),
          TodoListItems(todos: todos, onDeleteTodo: onDeleteTodo),
        ],
      ),
    );
  }
}
