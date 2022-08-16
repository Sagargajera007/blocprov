import 'package:blocprov/Demo/demo_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 class demo extends StatefulWidget {
   const demo({Key? key}) : super(key: key);

   @override
   State<demo> createState() => _demoState();
 }

 class _demoState extends State<demo> {
  DemoBloc? db;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    db = BlocProvider.of<DemoBloc>(context);

   db!.add(InitEvent(10));
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(appBar: AppBar(title: Text("Bloc"),),
     body: Column(children: [BlocBuilder<DemoBloc,DemoState>(builder:  (context, state) {
            if(state is InitialState)
              {
                return Text("${state.cnt}",style: TextStyle(fontSize: 50),);
              }
            return Text("0");
     },),
      ElevatedButton(onPressed: () {
          db!.add(IncrementEvent());
      }, child: Text("Increment")),
       ElevatedButton(onPressed: () {
         db!.add(DecrementEvent());
       }, child: Text("Decrement"))
     ],),
     );
   }
 }
