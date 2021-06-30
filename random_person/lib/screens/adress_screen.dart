import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_person/bloc/random_person_bloc.dart';
import 'package:random_person/bloc/random_person_repository.dart';
import 'package:random_person/helpers/random_models.dart';

/*class MyHomePage1 extends StatelessWidget {
  MyHomePage1({Key? key, this.model}) : super(key: key);
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
                  Text("name",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.location!.street!.name.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("number",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.location!.street!.name.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("city",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.location!.city.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("state",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.location!.state.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text(
                    "country",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  Text(
                    model!.results!.first.location!.country.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ]),
                TableRow(children: [
                  Text("postcode",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(model!.results!.first.location!.postcode.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("latitude",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(
                      model!.results!.first.location!.coordinates!.latitude
                          .toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("longitude",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(
                      model!.results!.first.location!.coordinates!.longitude
                          .toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("offset",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(
                      model!.results!.first.location!.timezone!.offset
                          .toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ]),
                TableRow(children: [
                  Text("description",
                      style: TextStyle(color: Colors.red, fontSize: 20)),
                  Text(
                      model!.results!.first.location!.timezone!.description
                          .toString(),
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