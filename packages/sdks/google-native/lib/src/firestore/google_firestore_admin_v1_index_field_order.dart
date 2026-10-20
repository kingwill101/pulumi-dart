import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates that this field supports ordering by the specified order or comparing using =, !=, &lt;, &lt;=, &gt;, &gt;=.
enum GoogleFirestoreAdminV1IndexFieldOrder implements pulumi.PulumiEnum<String> {
  orderUnspecified("ORDER_UNSPECIFIED"),
  ascending("ASCENDING"),
  descending("DESCENDING");

  const GoogleFirestoreAdminV1IndexFieldOrder(this.wireValue);
  @override
  final String wireValue;

  static GoogleFirestoreAdminV1IndexFieldOrder fromValue(String value) {
    for (final item in GoogleFirestoreAdminV1IndexFieldOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleFirestoreAdminV1IndexFieldOrder value: $value');
  }
}
