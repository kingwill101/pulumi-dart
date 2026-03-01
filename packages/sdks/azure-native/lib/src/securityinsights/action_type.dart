/// The type of the automation rule action.
enum ActionType {
  valueModifyProperties("ModifyProperties"),
  valueRunPlaybook("RunPlaybook"),
  valueAddIncidentTask("AddIncidentTask");

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

