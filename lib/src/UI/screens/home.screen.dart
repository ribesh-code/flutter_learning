import 'package:demo_kss/src/UI/states/todo_future_provider.dart';
import 'package:demo_kss/src/UI/widgets/todocard.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoFutureProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TODO',
          style: Theme.of(context).textTheme.headline1?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: state.when(
          loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
          error: (_, __) => Center(
                child: Text(
                  'Something went wrong!!!',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Colors.black),
                ),
              ),
          data: (todo) {
            return ListView.builder(
              itemCount: todo.length,
              itemBuilder: (context, i) {
                return TodoCard(
                  title: todo[i].title,
                );
              },
            );
          }),
    );
  }
}
