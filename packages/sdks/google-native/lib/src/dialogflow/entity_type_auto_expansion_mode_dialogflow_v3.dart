/// Indicates whether the entity type can be automatically expanded.
enum EntityTypeAutoExpansionModeDialogflowV3 {
  autoExpansionModeUnspecified("AUTO_EXPANSION_MODE_UNSPECIFIED"),
  autoExpansionModeDefault("AUTO_EXPANSION_MODE_DEFAULT");

  const EntityTypeAutoExpansionModeDialogflowV3(this.wireValue);
  final String wireValue;

  static EntityTypeAutoExpansionModeDialogflowV3 fromValue(String value) {
    for (final item in EntityTypeAutoExpansionModeDialogflowV3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EntityTypeAutoExpansionModeDialogflowV3 value: $value',
    );
  }
}
