import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that this field supports operations on `array_value`s.
enum GoogleFirestoreAdminV1IndexFieldArrayConfig implements pulumi.PulumiEnum<String> {
  arrayConfigUnspecified("ARRAY_CONFIG_UNSPECIFIED"),
  contains("CONTAINS");

  const GoogleFirestoreAdminV1IndexFieldArrayConfig(this.wireValue);
  @override
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
