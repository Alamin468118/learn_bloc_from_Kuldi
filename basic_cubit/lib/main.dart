import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

// ======================================================================================================================== //
//                                              After learn stream now learn cubit from Youtube Kuldi project               //
//                                                                                                                          //
//                                                                                                                          //
// ======================================================================================================================== //

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  // void increment() => emit(state + 1);
  // void decrement() => emit(state - 1);

  void tambahData() {
    // counterCubit.increment();
    emit(state + 1);
  }

  void penolakanData() {
    // counterCubit.decrement();
    emit(state - 1);
  }
}

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  CounterCubit counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'CUBIT APP',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
              stream: counterCubit.stream,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text(
                    "Loading...",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                } else {
                  return Text(
                    '${snapshot.data}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
              }),
          // Center(
          //   child: Text(
          //     "0",
          //     style: TextStyle(
          //       fontSize: 40,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.grey,
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  counterCubit.penolakanData();
                },
                icon: Icon(Icons.remove_circle_outline),
              ),
              IconButton(
                onPressed: () {
                  counterCubit.tambahData();
                },
                icon: Icon(Icons.add_circle_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
