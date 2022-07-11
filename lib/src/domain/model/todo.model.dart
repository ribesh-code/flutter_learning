import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.model.freezed.dart';
part 'todo.model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const TodoModel._();

  factory TodoModel({
    required int id,
    @JsonKey(name: 'title') required String title,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
