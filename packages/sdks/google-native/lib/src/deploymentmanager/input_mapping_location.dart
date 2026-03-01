/// The location where this mapping applies.
enum InputMappingLocation {
  unknown("UNKNOWN"),
  path("PATH"),
  query("QUERY"),
  body("BODY"),
  header("HEADER");

  const InputMappingLocation(this.value);
  final String value;

  static InputMappingLocation fromValue(String value) {
    for (final item in InputMappingLocation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InputMappingLocation value: $value');
  }
}

