import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The determinism level of the JavaScript UDF, if defined.
enum RoutineDeterminismLevel implements pulumi.PulumiEnum<String> {
  determinismLevelUnspecified("DETERMINISM_LEVEL_UNSPECIFIED"),
  deterministic("DETERMINISTIC"),
  notDeterministic("NOT_DETERMINISTIC");

  const RoutineDeterminismLevel(this.wireValue);
  @override
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
