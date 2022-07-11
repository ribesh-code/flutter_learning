import 'package:demo_kss/src/domain/model/todo.model.dart';
import 'package:demo_kss/src/infra/api/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// create a provider of todoService.
final todoServiceProvider =
    Provider<ITodoService>((ref) => TodoService(ref.read));

abstract class ITodoService {
  Future<List<TodoModel>> getTodo();
}

class TodoService extends ITodoService {
  TodoService(this._read);
  final Reader _read;
  @override
  Future<List<TodoModel>> getTodo() async {
    try {
      final res = await _read(httpClientProvider).get('/todos');
      final List data = res.data;
      final todoList = data.map((e) => TodoModel.fromJson(e)).toList();
      return todoList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
