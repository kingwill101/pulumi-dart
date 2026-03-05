/// Required. Indicates whether the additional data should override or supplement the custom entity type definition.
enum SessionEntityTypeEntityOverrideModeDialogflowV3 {
  entityOverrideModeUnspecified("ENTITY_OVERRIDE_MODE_UNSPECIFIED"),
  entityOverrideModeOverride("ENTITY_OVERRIDE_MODE_OVERRIDE"),
  entityOverrideModeSupplement("ENTITY_OVERRIDE_MODE_SUPPLEMENT");

  const SessionEntityTypeEntityOverrideModeDialogflowV3(this.wireValue);
  final String wireValue;

  static SessionEntityTypeEntityOverrideModeDialogflowV3 fromValue(String value) {
    for (final item in SessionEntityTypeEntityOverrideModeDialogflowV3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionEntityTypeEntityOverrideModeDialogflowV3 value: $value');
  }
}

