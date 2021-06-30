import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';
import 'package:random_person/helpers/random_models.dart';

import 'adress_screen.dart';

/*class MyHomePage2 extends StatelessWidget {
  MyHomePage2({Key? key, this.model}) : super(key: key);
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
                    "email",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  Text(
                    model!.results!.first.email.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ]),
                TableRow(children: [
                  Text("login",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.login.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("uuid",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.login!.uuid.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("username",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.login!.username.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("password",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.login!.password.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text(
                    "salt",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  Text(model!.results!.first.login!.salt.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("md5",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.login!.md5.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("phone",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.phone.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("date",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.dob!.date.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("age",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.dob!.age.toString(),
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