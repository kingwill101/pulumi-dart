/// The type of the automation rule action.
enum ActionType {
  valueModifyProperties("ModifyProperties"),
  valueRunPlaybook("RunPlaybook"),
  valueAddIncidentTask("AddIncidentTask");

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
