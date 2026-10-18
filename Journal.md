# Phase 1: The Adventurer and Party Model
In Phase 1, I created an Adventurer class that stores each adventurer's name, role, and gold cost. I also created a PartyModel class to keep track of the adventurers added to the party.

The `notifyListeners()` method lets the app know when something changes so the screen can update. If an adventurer is added without calling it, the information in the party would change, but the screen might not show the updated information until something else causes it to refresh.