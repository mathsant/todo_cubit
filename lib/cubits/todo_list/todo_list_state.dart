part of 'todo_list_cubit.dart';

class TodoListState extends Equatable {
  final List<Todo> todos;

  TodoListState({required this.todos});

  factory TodoListState.initial() {
    return TodoListState(
      todos: [
        Todo(id: '1', description: 'Clean the room'),
        Todo(id: '2', description: 'Wash the dishes'),
        Todo(id: '3', description: 'Do homework'),
      ],
    );
  }

  @override
  List<Object?> get props => [todos];

  @override
  String toString() => 'TodoListState(todos: $todos)';

  TodoListState copyWith({List<Todo>? todos}) {
    return TodoListState(todos: todos ?? this.todos);
  }
}
