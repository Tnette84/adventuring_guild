import 'package:flutter/foundation.dart';
import 'adventurer.dart';

class PartyModel extends ChangeNotifier {
 final List<Adventurer> _members = []; 

 List<Adventurer> get members => List.unmodifiable(_members);

 void recruitAdventurer(Adventurer adventurer) {
  _members.add(adventurer);
  notifyListeners();
}

int get totalGoldCost =>
    _members.fold(0, (total, adventurer) => total + adventurer.goldCost);
}