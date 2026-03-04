/// Defines how to handle a trailing slash in the URL path.
enum ServingConfigTrailingSlashBehavior {
  trailingSlashBehaviorUnspecified("TRAILING_SLASH_BEHAVIOR_UNSPECIFIED"),
  add("ADD"),
  remove("REMOVE");

  const ServingConfigTrailingSlashBehavior(this.wireValue);
  final String wireValue;

  static ServingConfigTrailingSlashBehavior fromValue(String value) {
    for (final item in ServingConfigTrailingSlashBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServingConfigTrailingSlashBehavior value: $value',
    );
  }
}
