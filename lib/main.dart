import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_app_with_flutter_bloc/pages/home_page.dart';

import 'bloc/joke_cubit/jke_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<JokeCubit>(create: (_) => JokeCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Joke App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}