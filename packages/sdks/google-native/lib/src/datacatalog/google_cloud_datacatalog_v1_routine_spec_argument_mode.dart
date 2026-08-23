/// Specifies whether the argument is input or output.
enum GoogleCloudDatacatalogV1RoutineSpecArgumentMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  in_("IN"),
  out("OUT"),
  inout("INOUT");

  const GoogleCloudDatacatalogV1RoutineSpecArgumentMode(this.wireValue);
  final String wireValue;

  static GoogleCloudDatacatalogV1RoutineSpecArgumentMode fromValue(String value) {
    for (final item in GoogleCloudDatacatalogV1RoutineSpecArgumentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatacatalogV1RoutineSpecArgumentMode value: $value');
  }
}
