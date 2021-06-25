import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';

import 'adress_screen.dart';

class MyHomePage3 extends StatefulWidget {
  MyHomePage3({Key? key}) : super(key: key);

  @override
  _MyHomePage3State createState() => _MyHomePage3State();
}

class _MyHomePage3State extends State<MyHomePage3> {
  final bloc = RandomPersonBloc(RandomRepository());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                padding: EdgeInsets.only(left: 15),
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "seed",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    Divides(),
                    Text("results",
                        style: TextStyle(color: Colors.red, fontSize: 20)),
                    Divides(),
                    Text("page",
                        style: TextStyle(color: Colors.red, fontSize: 20)),
                    Divides(),
                    Text("version",
                        style: TextStyle(color: Colors.red, fontSize: 20)),
                  ],
                ),
              ),
              BlocBuilder<RandomPersonBloc, RandomPersonState>(
                builder: (context, state) {
                  if (state is RandomPersonInitial) {
                    return Container(
                      height: 300,
                      padding: EdgeInsets.only(right: 15),
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.model.seed.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Divides(),
                          Text(state.model.results.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Divides(),
                          Text(state.model.page.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Divides(),
                          Text(state.model.version.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
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
    );
  }
}
