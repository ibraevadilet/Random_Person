import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';
import 'package:random_person/helpers/random_models.dart';

import 'adress_screen.dart';

/*class MyHomePage3 extends StatelessWidget {
  MyHomePage3({Key? key, this.model}) : super(key: key);
  final Random_models? model;
  final bloc = RandomPersonBloc(RandomRepository());
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: {1: FixedColumnWidth(1.5)},
              children: [
                TableRow(children: [
                  Text(
                    "seed",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  Text(model!.info!.seed.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("results",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.info!.results.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("page",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.info!.page.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("version",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.info!.version.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                bloc.add(GetRandomEvent());
              },
              tooltip: 'Increment',
              child: Icon(Icons.restart_alt),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}
*/