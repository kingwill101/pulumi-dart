enum TargetActionType {
  update("update");

  const TargetActionType(this.wireValue);
  final String wireValue;

  static TargetActionType fromValue(String value) {
    for (final item in TargetActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetActionType value: $value');
  }
}
