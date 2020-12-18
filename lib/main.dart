import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps/bloc_observer.dart';
/*import 'package:flutter_cubit/flutter_cubit.dart';*/
import 'package:google_maps/cubit_demo_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
void main(){
  Bloc.observer = SimpleObserver();
  runApp(
    MaterialApp(

      home: BlocProvider(
        create: (context)=> CubitBloc(),
          child: CubitDemo()),
    )
  );
}
class CubitDemo extends StatefulWidget {

  @override
  _CubitDemoState createState() => _CubitDemoState();
}

class _CubitDemoState extends State<CubitDemo> {

  int _Count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Cubit"),
     ),
   /*  floatingActionButton: FloatingActionButton(
     child: Icon(Icons.add),
    onPressed: (){
        CubitProvider.of<CubitBloc>(context).increment();
     },
    ),*/

    body: Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                BlocProvider.of<CubitBloc>(context).decrement();
              },
              child: Container(
                height: 50.0,
                width: 100.0,
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: Text(
                  "-",
                  style: TextStyle(

                      fontWeight: FontWeight.bold
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(5.0)
                ),
              ),
            ),
            BlocBuilder<CubitBloc,int>(
                builder: (context,state){
                  return Center(child:
                  Text(
                    state.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0
                    ),
                  ),);
                }),
            InkWell(
              onTap: (){
                BlocProvider.of<CubitBloc>(context).increment();
              },
              child: Container(
                height: 50.0,
                width: 100.0,
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                child: Text(
                  "+",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(5.0)
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(20.0),
        )
      ],

    )
    );
  }

}


