import 'package:bloc_demo2/color_change/color_change_bloc.dart';
import 'package:bloc_demo2/color_change/color_change_state.dart';
import 'package:bloc_demo2/color_change/color_change_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
          create: (context) => ColorChangeBloc(const ColorChangeState()),
          child: const ColorChangeView()),
    );
  }
}