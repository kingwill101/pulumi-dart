/// Value indicating whether the health error is customer resolvable.
enum HealthErrorCustomerResolvability {
  valueAllowed("Allowed"),
  valueNotAllowed("NotAllowed");

  const HealthErrorCustomerResolvability(this.value);
  final String value;

  static HealthErrorCustomerResolvability fromValue(String value) {
    for (final item in HealthErrorCustomerResolvability.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthErrorCustomerResolvability value: $value');
  }
}

