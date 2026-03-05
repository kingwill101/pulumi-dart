/// Required. The type of action that Robo should perform on the specified element.
enum RoboDirectiveActionType {
  actionTypeUnspecified("ACTION_TYPE_UNSPECIFIED"),
  singleClick("SINGLE_CLICK"),
  enterText("ENTER_TEXT"),
  ignore("IGNORE");

  const RoboDirectiveActionType(this.wireValue);
  final String wireValue;

  static RoboDirectiveActionType fromValue(String value) {
    for (final item in RoboDirectiveActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoboDirectiveActionType value: $value');
  }
}

