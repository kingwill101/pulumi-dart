/// Optional. The determinism level of the JavaScript UDF, if defined.
enum RoutineDeterminismLevel {
  determinismLevelUnspecified("DETERMINISM_LEVEL_UNSPECIFIED"),
  deterministic("DETERMINISTIC"),
  notDeterministic("NOT_DETERMINISTIC");

  const RoutineDeterminismLevel(this.value);
  final String value;

  static RoutineDeterminismLevel fromValue(String value) {
    for (final item in RoutineDeterminismLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutineDeterminismLevel value: $value');
  }
}

