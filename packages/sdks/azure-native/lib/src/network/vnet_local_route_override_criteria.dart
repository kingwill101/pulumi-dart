import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
enum VnetLocalRouteOverrideCriteria implements pulumi.PulumiEnum<String> {
  valueContains("Contains"),
  valueEqual("Equal");

  const VnetLocalRouteOverrideCriteria(this.wireValue);
  @override
  final String wireValue;

  static VnetLocalRouteOverrideCriteria fromValue(String value) {
    for (final item in VnetLocalRouteOverrideCriteria.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VnetLocalRouteOverrideCriteria value: $value');
  }
}
