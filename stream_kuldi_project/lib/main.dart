import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ======================================================================================================================== //
// konsep dasar stream iaitu seperti aliran data yang dikirimkan dari satu source ke satu tujuan data itu akan digunakan    //
// yield digunakan utk call data ke stream                                                                                  //
//  pergerakan data boleh dilakukan secara asynchronous @ ascending                                                         //
// ======================================================================================================================== //

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  Stream<int> CountStream() async* {
    for (var i = 0; i <= 10; i++) {
      await Future.delayed(Duration(seconds: 1)); //delay between each data send
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    print("reBuild");
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Stream",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      body: StreamBuilder<Object>(
          stream:
              CountStream(), // stream digunakan untuk memantau pergerakan @ memanggil data dari source ke tujuan
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text(
                  "Loading .. ",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              );
            } else {
              return Center(
                child: Text(
                  "${snapshot.data}",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              );
            }
          }),
    );
  }
}
