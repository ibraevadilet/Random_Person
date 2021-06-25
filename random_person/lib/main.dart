import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';
import 'package:random_person/screens/main_screen.dart';

import 'bloc/random_person_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomPersonBloc(RandomRepository()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Person_Data(),
      ),
    );
  }
}
