import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';

import 'adress_screen.dart';

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key? key}) : super(key: key);

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 800,
                  padding: EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "email",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      Divides(),
                      Text("login",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("uuid",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("username",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("password",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text(
                        "salt",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      Divides(),
                      Text("md5",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("sha1",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("sha256",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("date",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("age",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("registered_date",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("registered_age",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("phone",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("cell",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("id_name",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("id_value",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                    ],
                  ),
                ),
                BlocBuilder<RandomPersonBloc, RandomPersonState>(
                  builder: (context, state) {
                    if (state is RandomPersonInitial) {
                      Container(
                        height: 800,
                        padding: EdgeInsets.only(right: 15),
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.model.email.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Divides(),
                            Text(state.model.login.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.uuid.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.username.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.password.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(
                              state.model.salt.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Divides(),
                            Text(state.model.md5.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.sha1.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.sha256.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.date.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.age.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.registered_date.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.registered_age.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.phone.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.cell.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.id_name.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.id_value.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ],
                        ),
                      );
                    } else if (state is RandomError) {
                      return Column(
                        children: [
                          Text("OOps произошла ошибка"),
                          SizedBox(
                            height: 30,
                          ),
                          TextButton(
                              onPressed: () {
                                bloc.add(GetRandomEvent());
                              },
                              child: Text("Повторить снова"))
                        ],
                      );
                    }
                    return Text("Ошибка");
                  },
                )
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
