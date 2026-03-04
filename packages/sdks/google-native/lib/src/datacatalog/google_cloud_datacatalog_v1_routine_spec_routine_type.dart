/// The type of the routine.
enum GoogleCloudDatacatalogV1RoutineSpecRoutineType {
  routineTypeUnspecified("ROUTINE_TYPE_UNSPECIFIED"),
  scalarFunction("SCALAR_FUNCTION"),
  procedure("PROCEDURE");

  const GoogleCloudDatacatalogV1RoutineSpecRoutineType(this.wireValue);
  final String wireValue;

  static GoogleCloudDatacatalogV1RoutineSpecRoutineType fromValue(
    String value,
  ) {
    for (final item in GoogleCloudDatacatalogV1RoutineSpecRoutineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDatacatalogV1RoutineSpecRoutineType value: $value',
    );
  }
}
