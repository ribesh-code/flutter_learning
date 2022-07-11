import 'package:demo_kss/src/domain/model/todo.model.dart';
import 'package:demo_kss/src/services/todo.service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoFutureProvider = FutureProvider<List<TodoModel>>(
  (ref) async {
    return ref.read(todoServiceProvider).getTodo();
  },
);
