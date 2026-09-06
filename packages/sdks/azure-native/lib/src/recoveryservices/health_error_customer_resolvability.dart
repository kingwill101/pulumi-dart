import 'package:pulumi/pulumi.dart' as pulumi;

/// Value indicating whether the health error is customer resolvable.
enum HealthErrorCustomerResolvability implements pulumi.PulumiEnum<String> {
  valueAllowed("Allowed"),
  valueNotAllowed("NotAllowed");

  const HealthErrorCustomerResolvability(this.wireValue);
  @override
  final String wireValue;

  static HealthErrorCustomerResolvability fromValue(String value) {
    for (final item in HealthErrorCustomerResolvability.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthErrorCustomerResolvability value: $value');
  }
}
