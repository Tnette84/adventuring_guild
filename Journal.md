# Phase 1: The Adventurer and Party Model
In Phase 1, I created an Adventurer class that stores each adventurer's name, role, and gold cost. I also created a PartyModel class to keep track of the adventurers added to the party.

The `notifyListeners()` method lets the app know when something changes so the screen can update. If an adventurer is added without calling it, the information in the party would change, but the screen might not show the updated information until something else causes it to refresh.

## Phase 2: Setting Up Provider

In Phase 2, I added the Provider package to my Flutter project and connected it to my PartyModel using ChangeNotifierProvider. This allows different parts of my app to access the same party information.

Provider helps manage the app's state without having to pass information manually between every widget. When the party changes, notifyListeners() lets the listening widgets know they need to update.

### Phase 3: Guild Hall Roster

In this phase, I created a Guild Hall roster with three adventurers: Knight, Mage, and Ranger. I displayed their names, roles, and gold costs using `ListView.builder`. I also added Recruit buttons.

I learned that `context.read<PartyModel>()` lets the Recruit button access the shared party model and add an adventurer without making the roster listen for changes.

### Phase 4: Quest Party Summary

In this phase, I created a Quest Party Summary that displays the number of recruited adventurers, their total gold cost, and their names and roles. I also added Dismiss buttons to remove adventurers.

I used `context.watch<PartyModel>()` so the summary updates when the party changes. When I click Recruit or Dismiss, the model calls `notifyListeners()`, and Provider rebuilds the summary with the updated information.

### Phase 5: Testing and Final Reflection

I tested my Adventuring Guild app in Chrome. I recruited Knight, Mage, and Ranger, and the summary correctly showed 3 recruited adventurers with a total cost of 440 gold.

I also tested the Dismiss button by removing Knight. The summary updated to 2 adventurers and 340 gold.

This assignment helped me understand how Provider and ChangeNotifier work together to keep information updated across different widgets.