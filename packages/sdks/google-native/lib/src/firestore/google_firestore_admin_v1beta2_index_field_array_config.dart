import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that this field supports operations on `array_value`s.
enum GoogleFirestoreAdminV1beta2IndexFieldArrayConfig implements pulumi.PulumiEnum<String> {
  arrayConfigUnspecified("ARRAY_CONFIG_UNSPECIFIED"),
  contains("CONTAINS");

  const GoogleFirestoreAdminV1beta2IndexFieldArrayConfig(this.wireValue);
  @override
  final String wireValue;

  static GoogleFirestoreAdminV1beta2IndexFieldArrayConfig fromValue(String value) {
    for (final item in GoogleFirestoreAdminV1beta2IndexFieldArrayConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleFirestoreAdminV1beta2IndexFieldArrayConfig value: $value');
  }
}
