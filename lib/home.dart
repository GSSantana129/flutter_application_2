import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18,8,18,0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.grey, 
                    spreadRadius: 3, 
                    blurRadius: 7, 
                    offset: Offset(0, 3)
                    )],

                  color: Color.fromARGB(255, 77, 157, 172),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: double.infinity,
                height: 120,
                child: Column(
                  children: [
                    // CircleAvatar(backgroundImage: AssetImage("assets/imagem.jpg"),)
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 5),
                          child: Text("Qual o valor total da compra?"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Ex.: 250.7",
                          labelText: "Valor",
                          icon: IconButton(onPressed:(){}, icon: Icon(Icons.monetization_on, size: 40,)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 9, 97, 97),
                              width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                    
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
