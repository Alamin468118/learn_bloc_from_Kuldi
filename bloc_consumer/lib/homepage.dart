import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  CounterCubit counterCubit = CounterCubit();

  // bloc consumer is a combination of the bloc listener and bloc builder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Flutter Consumer',
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
          BlocConsumer<CounterCubit, int>(
            bloc: counterCubit,
            builder: (context, state) {
              return Text(
                '$state',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
            listener: (context, state) {
              if (state == 0) {
                // ignore: deprecated_member_use
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('running out of counter'),
                  ),
                );
              }
            },
          ),
          // BlocListener<CounterCubit, int>(
          //   // reason to use BlocListener is to listen to the state of the bloc
          //   bloc: counterCubit,
          //   listener: (context, state) {
          //     if (state == 0) {
          //       // ignore: deprecated_member_use
          //       Scaffold.of(context).showSnackBar(
          //         SnackBar(
          //           content: Text('running out of counter'),
          //         ),
          //       );
          //     }
          //   },
          //   child: BlocBuilder<CounterCubit, int>(
          //     bloc: counterCubit,
          //     // buildWhen: ((previous, current) {
          //     //   // return previous != current;
          //     //   // return true;
          //     //   if (current % 2 == 0) {
          //     //     return true;
          //     //   } else {
          //     //     return false;
          //     //   }
          //     // }),
          //     builder: (context, state) {
          //       return Text(
          //         '$state',
          //         style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       );
          //     },
          //   ),
          // ),
          // StreamBuilder(
          //     stream: counterCubit.stream,
          //     builder: (context, snapshot) {
          //       return Center(
          //         child: Text(
          //           '${snapshot.data}',
          //           style: const TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       );
          //     },),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  counterCubit.penolakanData();
                },
                icon: const Icon(Icons.remove_circle_outline),
              ),
              IconButton(
                onPressed: () {
                  counterCubit.tambahData();
                },
                icon: const Icon(Icons.add_circle_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
