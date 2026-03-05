/// Optional. Indicates whether the entity type can be automatically expanded.
enum EntityTypeAutoExpansionMode {
  autoExpansionModeUnspecified("AUTO_EXPANSION_MODE_UNSPECIFIED"),
  autoExpansionModeDefault("AUTO_EXPANSION_MODE_DEFAULT");

  const EntityTypeAutoExpansionMode(this.wireValue);
  final String wireValue;

  static EntityTypeAutoExpansionMode fromValue(String value) {
    for (final item in EntityTypeAutoExpansionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeAutoExpansionMode value: $value');
  }
}

