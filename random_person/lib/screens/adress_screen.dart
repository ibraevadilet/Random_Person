import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';

class Divides extends StatelessWidget {
  const Divides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Divider(
        color: Colors.white,
        height: 0.1,
        thickness: 1,
      ),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  MyHomePage1({Key? key}) : super(key: key);

  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
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
                  height: 650,
                  padding: EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "street",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      Divides(),
                      Text("name",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("number",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("city",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("state",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text(
                        "country",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      Divides(),
                      Text("postcode",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("latitude",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("longitude",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("offset",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      Divides(),
                      Text("description",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                    ],
                  ),
                ),
                BlocBuilder<RandomPersonBloc, RandomPersonState>(
                  builder: (context, state) {
                    if (state is RandomPersonInitial) {
                      return Container(
                        height: 650,
                        padding: EdgeInsets.only(right: 15),
                        width: MediaQuery.of(context).size.width / 2,
                        color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.model.street.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Divides(),
                            Text(state.model.name.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.number.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.city.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.state.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(
                              state.model.country.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Divides(),
                            Text(state.model.postcode.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.latitude.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.longitude.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.offset.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Divides(),
                            Text(state.model.description.toString(),
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
