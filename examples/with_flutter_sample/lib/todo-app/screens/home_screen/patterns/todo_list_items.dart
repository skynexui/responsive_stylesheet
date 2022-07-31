import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'package:with_flutter_sample/todo-app/screens/home_screen/domain/todo/Todo.dart';

class TodoListItems extends StatelessWidget {
  final List<Todo> todos;
  final Function(int) onDeleteTodo;

  const TodoListItems({
    Key? key,
    required this.todos,
    required this.onDeleteTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var responsive = Responsive(context);

    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: responsive.value({
            Breakpoints.xs: 1,
            Breakpoints.md: 5,
          }),
        ),
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: Center(
                child: Column(
              children: [
                Text(todos[index].title),
                ElevatedButton(
                  onPressed: () {
                    onDeleteTodo(index);
                  },
                  child: const Text("Delete"),
                )
              ],
            )),
          );
        },
      ),
    );
  }
}
