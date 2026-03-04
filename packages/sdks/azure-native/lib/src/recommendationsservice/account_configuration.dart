/// Account configuration. This can only be set at RecommendationsService Account creation.
enum AccountConfiguration {
  valueFree("Free"),
  valueCapacity("Capacity");

  const AccountConfiguration(this.wireValue);
  final String wireValue;

  static AccountConfiguration fromValue(String value) {
    for (final item in AccountConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountConfiguration value: $value');
  }
}
