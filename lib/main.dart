import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Resume"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Image.asset("images/profile.png",width: 150,height: 150,),
              ),
              SizedBox(height: 16,),
              Text("Personal info",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32 ),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: const [
                      Text("Name"),
                      Text("Kazem Moridi")
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: const [
                      Text("Location"),
                      Text("Iran")
                    ],)
                  ],
                ),
              ),
              Text("Skills",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32 ),
                child: Column(
                  children: const [
                    SkillComponent(
                      name: "Android",
                      star: 5,
                    ),SkillComponent(
                      name: "Flutter",
                      star: 4,
                    ),SkillComponent(
                      name: "Web",
                      star: 3,
                    ),
                  ],
                ),
              )

            ],
          )
        ),
      )
    );
  }
}
class SkillComponent extends StatelessWidget {
  const SkillComponent({Key? key, required this.name, required this.star}) : super(key: key);

  final String name;
  final int star;
  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children:  [
      Text(name),
      Row(
        children: [for (var i = 0; i < star; i++) Icon(Icons.star, color: Colors.amber,)],
      )


    ],);
  }
}

