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
              child: Row(
                children: [
                  Text(todos[index].title),
                  ElevatedButton(
                    onPressed: () {
                      onDeleteTodo(index);
                    },
                    child: const Text("Delete"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            var todo = todos[index];
                            return TodoEditDialog(
                                responsive: responsive, todo: todo);
                          });
                    },
                    child: const Text("Edit"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TodoEditDialog extends StatelessWidget {
  const TodoEditDialog({
    Key? key,
    required this.responsive,
    required this.todo,
  }) : super(key: key);

  final Responsive responsive;
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: const EdgeInsets.all(0),
      elevation: 0,
      content: Expanded(
        child: GridItem(
          as: Column,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: responsive.screenWidth.percent(90),
              color: Colors.amber,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: TextEditingController(text: todo.title),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: TextEditingController(text: todo.description),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
