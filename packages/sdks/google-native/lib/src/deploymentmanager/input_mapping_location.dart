/// The location where this mapping applies.
enum InputMappingLocation {
  unknown("UNKNOWN"),
  path("PATH"),
  query("QUERY"),
  body("BODY"),
  header("HEADER");

  const InputMappingLocation(this.wireValue);
  final String wireValue;

  static InputMappingLocation fromValue(String value) {
    for (final item in InputMappingLocation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputMappingLocation value: $value');
  }
}
