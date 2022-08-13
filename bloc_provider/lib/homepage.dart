import 'package:bloc_builder/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/counter_data.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  // CounterCubit counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    CounterCubit mycounter = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Flutter Bloc Provider'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15.0),
                  child: InkWell(
                    onTap: () {
                      // counterCubit.penolakanData();
                      mycounter.penolakanData();
                    },
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Icon(
                          Icons.remove_circle_outline_outlined,
                          size: 35.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                CounterData(), //(counterCubit: counterCubit),
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15.0),
                  child: InkWell(
                    onTap: () {
                      // counterCubit.tambahData();
                      mycounter.tambahData();
                    },
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(),
                      child: Center(
                        child: Icon(
                          Icons.add_circle_outline_outlined,
                          size: 35.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
