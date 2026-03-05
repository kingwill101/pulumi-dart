/// Allow or deny type.
enum CustomConstraintActionType {
  actionTypeUnspecified("ACTION_TYPE_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const CustomConstraintActionType(this.wireValue);
  final String wireValue;

  static CustomConstraintActionType fromValue(String value) {
    for (final item in CustomConstraintActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomConstraintActionType value: $value');
  }
}

