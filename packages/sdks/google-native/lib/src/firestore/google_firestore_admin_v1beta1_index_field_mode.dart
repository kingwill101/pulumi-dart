import 'package:pulumi/pulumi.dart' as pulumi;

/// The field's mode.
enum GoogleFirestoreAdminV1beta1IndexFieldMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  ascending("ASCENDING"),
  descending("DESCENDING"),
  arrayContains("ARRAY_CONTAINS");

  const GoogleFirestoreAdminV1beta1IndexFieldMode(this.wireValue);
  @override
  final String wireValue;

  static GoogleFirestoreAdminV1beta1IndexFieldMode fromValue(String value) {
    for (final item in GoogleFirestoreAdminV1beta1IndexFieldMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleFirestoreAdminV1beta1IndexFieldMode value: $value');
  }
}
