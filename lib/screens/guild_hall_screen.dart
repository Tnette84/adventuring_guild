import 'package:flutter/material.dart';
import '../models/adventurer.dart';
import 'package:provider/provider.dart';
import '../models/party_model.dart';

class GuildHallRoster extends StatelessWidget {
  const GuildHallRoster({super.key});

  static final List<Adventurer> availableAdventurers = [
  Adventurer(name: 'Knight', role: 'Warrior', goldCost: 100),
 Adventurer(name: 'Mage', role: 'Spellcaster', goldCost: 200),
 Adventurer(name: 'Ranger', role: 'Archer', goldCost: 140), 
];  


  @override
Widget build(BuildContext context) {
return ListView.builder(
  itemCount: availableAdventurers.length,
 itemBuilder: (context, index) {
return ListTile(
  title: Text(availableAdventurers[index].name),
 subtitle: Text(
  '${availableAdventurers[index].role} - ${availableAdventurers[index].goldCost} gold',
),
trailing: ElevatedButton(
  onPressed: () {
  context.read<PartyModel>().recruitAdventurer(
    availableAdventurers[index],
  );
},
  child: const Text('Recruit'),
),
);
}, 
);
}
}