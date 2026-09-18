import 'package:calculator/database/calculator_history.dart';
import 'package:calculator/pages/tile.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Historypage extends StatefulWidget {
Historypage({super.key});

  @override
  State<Historypage> createState() => _HistorypageState();
}

class _HistorypageState extends State<Historypage> {
var db= CalculatorHistory();
var box = Hive.box("history");

  @override
  void initState() {
    // TODO: implement initState
      db.gethistory();
    super.initState();
  }

  void deletehistory(int index){
    setState(() {
      db.deleteHistory(index);
    });
    db.updatehistory();
  }
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text(
          'History',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
      )
        ),
    body: ListView.builder(
      itemCount: db.historylist.length,
      itemBuilder:(context, index){
        return Tile(
          hisresult: db.historylist[index],
          onDelete: ()=>deletehistory(index) ,
        );
      }
      ),   

  
    );
  }
}