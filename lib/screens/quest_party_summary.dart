import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/party_model.dart';

class QuestPartySummary extends StatelessWidget {
  const QuestPartySummary({super.key});

 @override
Widget build(BuildContext context) {
final party = context.watch<PartyModel>();


return Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    Text(
      'Recruited: ${party.members.length} | Total Gold: ${party.totalGoldCost}',
    ),
    ...party.members.map(
     (adventurer) => ListTile(
  title: Text(adventurer.name),
  subtitle: Text(adventurer.role),
  trailing: ElevatedButton(
    onPressed: () {
      party.removeAdventurer(adventurer);
    },
    child: const Text('Dismiss'),
  ),
),
    ),
  ],
);

} 
}