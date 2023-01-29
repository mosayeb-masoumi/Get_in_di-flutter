
import 'package:flutter/material.dart';
import 'package:get_it_locator_project/domain/home_controller.dart';
import 'package:get_it_locator_project/domain/models/home_model/home_model.dart';
import 'package:get_it_locator_project/locator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String title ="";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [

            SizedBox(height: 50,),
            ElevatedButton(onPressed: () async {
              HomeModel model = await locator.get<HomeController>().getNextItem();
              setState(() {
                title =model.title;
              });
            }, child: Text("get data")),

            Text(title)
          ],
        ),
      ),
    );
  }
}
