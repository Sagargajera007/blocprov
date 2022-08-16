import 'package:blocprov/Demo/demo.dart';
import 'package:blocprov/Demo/demo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      BlocProvider(
        create: (context) => DemoBloc(),
      )
    ],
    child: MaterialApp(
      home: demo(),
    ),
  ));


}
