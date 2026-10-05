import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.
enum GoogleDatastoreAdminV1IndexedPropertyDirection implements pulumi.PulumiEnum<String> {
  directionUnspecified("DIRECTION_UNSPECIFIED"),
  ascending("ASCENDING"),
  descending("DESCENDING");

  const GoogleDatastoreAdminV1IndexedPropertyDirection(this.wireValue);
  @override
  final String wireValue;

  static GoogleDatastoreAdminV1IndexedPropertyDirection fromValue(String value) {
    for (final item in GoogleDatastoreAdminV1IndexedPropertyDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleDatastoreAdminV1IndexedPropertyDirection value: $value');
  }
}
