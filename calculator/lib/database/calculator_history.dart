
import 'package:hive_flutter/adapters.dart';

class CalculatorHistory {
  var box = Hive.box("history");
  List historylist=[];

  
  void gethistory(){
    historylist=box.get("calhistory");


  }
  void addHistory(String calculation) {
    historylist.add(calculation);
    updatehistory();
  }

  void deleteHistory(int index) {
    historylist.removeAt(index);
    updatehistory();
  }

  void updatehistory(){
    box.put("calhistory", historylist);

  }
  
}