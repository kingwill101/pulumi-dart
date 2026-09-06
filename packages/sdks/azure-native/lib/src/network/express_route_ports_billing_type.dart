import 'package:pulumi/pulumi.dart' as pulumi;

/// The billing type of the ExpressRoutePort resource.
enum ExpressRoutePortsBillingType implements pulumi.PulumiEnum<String> {
  valueMeteredData("MeteredData"),
  valueUnlimitedData("UnlimitedData");

  const ExpressRoutePortsBillingType(this.wireValue);
  @override
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
