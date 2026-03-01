/// Indicates that this field supports ordering by the specified order or comparing using =, !=, <, <=, >, >=.
enum GoogleFirestoreAdminV1IndexFieldOrder {
  orderUnspecified("ORDER_UNSPECIFIED"),
  ascending("ASCENDING"),
  descending("DESCENDING");

  const GoogleFirestoreAdminV1IndexFieldOrder(this.value);
  final String value;

  static GoogleFirestoreAdminV1IndexFieldOrder fromValue(String value) {
    for (final item in GoogleFirestoreAdminV1IndexFieldOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleFirestoreAdminV1IndexFieldOrder value: $value');
  }
}

