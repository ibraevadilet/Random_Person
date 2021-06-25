import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';
import 'package:random_person/helpers/random_models.dart';

import 'about_screen.dart';
import 'adress_screen.dart';
import 'email_screen.dart';

class Person_Data extends StatefulWidget {
  Person_Data({Key? key}) : super(key: key);

  @override
  _Person_DataState createState() => _Person_DataState();
}

class _Person_DataState extends State<Person_Data>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  final bloc = RandomPersonBloc(RandomRepository());
  var _scaffoldkey = GlobalKey<ScaffoldState>();
  Random_models model = Random_models();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("Random Person", textAlign: TextAlign.center),
      ),
      body: Container(
        child: BlocBuilder<RandomPersonBloc, RandomPersonState>(
          builder: (context, state) {
            if (state is RandomPersonInitial) {
              return Column(
                children: [
                  Container(
                    color: Colors.cyan[600],
                    height: 250,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          state.model.large.toString(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              state.model.title.toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(state.model.first.toString(),
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(state.model.last.toString(),
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                          ],
                        ),
                        Text(state.model.gender.toString(),
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      color: Colors.green,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Text(
                        "Adress",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "E-mail & phone",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "about APP",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(controller: _tabController, children: [
                      MyHomePage1(),
                      MyHomePage2(),
                      MyHomePage3(),
                    ]),
                  )
                ],
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
            return Text("data");
          },
        ),
      ),
    );
  }
}
