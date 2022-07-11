import 'package:demo_kss/src/UI/screens/home.screen.dart';
import 'package:demo_kss/src/UI/themes/app.theme.dart';
import 'package:demo_kss/src/infra/api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final httpProvider = Provider(
  (ref) => HttpClient(reader: ref.read).httpClient,
);
void main() {
  runApp(
    ProviderScope(
      overrides: [
        httpClientProvider.overrideWithProvider(httpProvider),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      home: const HomeScreen(),
    );
  }
}
