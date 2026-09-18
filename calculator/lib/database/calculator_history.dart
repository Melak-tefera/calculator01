
import 'package:hive_flutter/adapters.dart';

class CalculatorHistory {
  List<String> historylist=[];
  var box = Hive.box("history");
  

  
  void gethistory(){
    var savedhistory= box.get("calhistory");
    historylist=savedhistory.cast<String>();


  }

  void updatehistory()async{
    await box.put("calhistory", historylist);

  }

  void deletehistorybyline(int index)async{
    historylist.removeAt(index);
    await box.deleteAt(index);


  }

  void clearit()async{
    historylist.clear();
    await box.delete("calhistory");
  }
  
}