/// The type of the action that will be triggered by the Automation
enum ActionType {
  valueLogicApp("LogicApp"),
  valueEventHub("EventHub"),
  valueWorkspace("Workspace");

  const ActionType(this.value);
  final String value;

  static ActionType fromValue(String value) {
    for (final item in ActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionType value: $value');
  }
}

