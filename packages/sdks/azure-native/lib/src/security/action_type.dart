/// The type of the action that will be triggered by the Automation
enum ActionType {
  logicApp("LogicApp"),
  eventHub("EventHub"),
  workspace("Workspace"),
  internal("Internal");

  const ActionType(this.wireValue);
  final String wireValue;

  static ActionType fromValue(String value) {
    for (final item in ActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionType value: $value');
  }
}
