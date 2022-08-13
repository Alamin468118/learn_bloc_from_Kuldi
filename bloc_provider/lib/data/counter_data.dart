import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';


class CounterData extends StatelessWidget {
  const CounterData({
    Key? key,
    
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.40,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
      ),
      child: Center(
        child: BlocBuilder(
          bloc: BlocProvider.of<CounterCubit>(context), //untuk mengambil data dari bloc
          builder: (context, state) {
            return Text(
              "$state",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            );
          },
        ),
      ),
    );
  }
}
