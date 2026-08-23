/// The billing type of the ExpressRoutePort resource.
enum ExpressRoutePortsBillingType {
  valueMeteredData("MeteredData"),
  valueUnlimitedData("UnlimitedData");

  const ExpressRoutePortsBillingType(this.wireValue);
  final String wireValue;

  static ExpressRoutePortsBillingType fromValue(String value) {
    for (final item in ExpressRoutePortsBillingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRoutePortsBillingType value: $value');
  }
}
