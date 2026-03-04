/// Optional. The determinism level of the JavaScript UDF, if defined.
enum RoutineDeterminismLevel {
  determinismLevelUnspecified("DETERMINISM_LEVEL_UNSPECIFIED"),
  deterministic("DETERMINISTIC"),
  notDeterministic("NOT_DETERMINISTIC");

  const RoutineDeterminismLevel(this.wireValue);
  final String wireValue;

  static RoutineDeterminismLevel fromValue(String value) {
    for (final item in RoutineDeterminismLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutineDeterminismLevel value: $value');
  }
}
