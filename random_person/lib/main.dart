import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';
import 'package:random_person/helpers/random_models.dart';
import 'package:random_person/screens/about_screen.dart';
import 'package:random_person/screens/adress_screen.dart';
import 'package:random_person/screens/email_screen.dart';
import 'bloc/random_person_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);
  final Random_models? model = Random_models();
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  TabController? _tabController;
  final Random_models? model = Random_models();

  @override
  void initState() {
    bloc.add(GetRandomEvent());
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RandomPersonBloc(RandomRepository()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          key: _scaffoldkey,
          appBar: AppBar(
            title: Text("Random Person", textAlign: TextAlign.center),
          ),
          body: Container(
            child: BlocBuilder<RandomPersonBloc, RandomPersonState>(
              bloc: bloc,
              builder: (context, state) {
                if (state is RandomPersonInitial) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Начало"),
                        FloatingActionButton(
                          onPressed: () {
                            bloc.add(GetRandomEvent());
                          },
                          tooltip: 'Increment',
                          child: Icon(Icons.restart_alt),
                        )
                      ],
                    ),
                  );
                } else if (state is RandomLoaded) {
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
                              state.model.results!.first.picture!.large
                                  .toString(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  state.model.results!.first.name!.title
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    state.model.results!.first.name!.first
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    state.model.results!.first.name!.last
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white)),
                              ],
                            ),
                            Text(state.model.results!.first.gender.toString(),
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
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
                        child:
                            TabBarView(controller: _tabController, children: [
                          ListView(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(),
                                    columnWidths: {1: FlexColumnWidth(1.5)},
                                    children: [
                                      TableRow(children: [
                                        Text("name",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .street!.name
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("number",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .street!.name
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("city",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .city
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("state",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .state
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text(
                                          "country",
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 20),
                                        ),
                                        Text(
                                          state.model.results!.first.location!
                                              .country
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 20),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Text("postcode",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .postcode
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("latitude",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .coordinates!.latitude
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("longitude",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .coordinates!.longitude
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("offset",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .timezone!.offset
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("description",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.location!
                                                .timezone!.description
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
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
                          ),
                          ListView(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(),
                                    columnWidths: {1: FlexColumnWidth(1.5)},
                                    children: [
                                      TableRow(children: [
                                        Text(
                                          "email",
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 20),
                                        ),
                                        Text(
                                          state.model.results!.first.email
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 20),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Text("login",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.login
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("uuid",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.login!
                                                .uuid
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("username",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.login!
                                                .username
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("password",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.login!
                                                .password
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text(
                                          "salt",
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 20),
                                        ),
                                        Text(
                                            state.model.results!.first.login!
                                                .salt
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("md5",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state
                                                .model.results!.first.login!.md5
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("phone",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.phone
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("date",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.dob!.date
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("age",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.results!.first.dob!.age
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
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
                          ),
                          ListView(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(),
                                    columnWidths: {1: FlexColumnWidth(2)},
                                    children: [
                                      TableRow(children: [
                                        Text(
                                          "seed",
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 20),
                                        ),
                                        Text(state.model.info!.seed.toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("results",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.info!.results
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("page",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(state.model.info!.page.toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                      ]),
                                      TableRow(children: [
                                        Text("version",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
                                        Text(
                                            state.model.info!.version
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20)),
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
                          )

                          // MyHomePage1(model: model),
                          // MyHomePage2(model: model),
                          // MyHomePage3(model: model),
                        ]),
                      )
                    ],
                  );
                } else if (state is RandomError) {
                  return Column(
                    children: [
                      Text(state.message.message.toString()),
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
        ),
      ),
    );
  }
}
