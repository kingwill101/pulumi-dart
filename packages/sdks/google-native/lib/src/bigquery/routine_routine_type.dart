import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of routine.
enum RoutineRoutineType implements pulumi.PulumiEnum<String> {
  routineTypeUnspecified("ROUTINE_TYPE_UNSPECIFIED"),
  scalarFunction("SCALAR_FUNCTION"),
  procedure("PROCEDURE"),
  tableValuedFunction("TABLE_VALUED_FUNCTION"),
  aggregateFunction("AGGREGATE_FUNCTION");

  const RoutineRoutineType(this.wireValue);
  @override
  final String wireValue;

  static RoutineRoutineType fromValue(String value) {
    for (final item in RoutineRoutineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutineRoutineType value: $value');
  }
}
