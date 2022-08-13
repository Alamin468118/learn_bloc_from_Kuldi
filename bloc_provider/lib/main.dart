import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}
// ======================================================================================================================================================== //
//  for this bloc provider file will apply also dependency injection to ensure that the bloc is always available and available throughout the application   //
//  this help us to avoid the boilerplate code and the boilerplate code is the code that is repeated in every widget                                        //
//  this will ensure we are always getting the same bloc instance throughout the application                                                                //
// ======================================================================================================================================================== //

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
