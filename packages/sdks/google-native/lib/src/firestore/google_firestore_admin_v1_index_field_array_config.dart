/// Indicates that this field supports operations on `array_value`s.
enum GoogleFirestoreAdminV1IndexFieldArrayConfig {
  arrayConfigUnspecified("ARRAY_CONFIG_UNSPECIFIED"),
  contains("CONTAINS");

  const GoogleFirestoreAdminV1IndexFieldArrayConfig(this.wireValue);
  final String wireValue;

  static GoogleFirestoreAdminV1IndexFieldArrayConfig fromValue(String value) {
    for (final item in GoogleFirestoreAdminV1IndexFieldArrayConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleFirestoreAdminV1IndexFieldArrayConfig value: $value');
  }
}

