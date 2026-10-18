# Phase 1: The Adventurer and Party Model
In Phase 1, I created an Adventurer class that stores each adventurer's name, role, and gold cost. I also created a PartyModel class to keep track of the adventurers added to the party.

The `notifyListeners()` method lets the app know when something changes so the screen can update. If an adventurer is added without calling it, the information in the party would change, but the screen might not show the updated information until something else causes it to refresh.

## Phase 2: Setting Up Provider

In Phase 2, I added the Provider package to my Flutter project and connected it to my PartyModel using ChangeNotifierProvider. This allows different parts of my app to access the same party information.

Provider helps manage the app's state without having to pass information manually between every widget. When the party changes, notifyListeners() lets the listening widgets know they need to update.