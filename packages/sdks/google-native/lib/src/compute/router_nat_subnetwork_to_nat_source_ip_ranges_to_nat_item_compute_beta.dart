import 'package:pulumi/pulumi.dart' as pulumi;

enum RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta implements pulumi.PulumiEnum<String> {
  allIpRanges("ALL_IP_RANGES"),
  listOfSecondaryIpRanges("LIST_OF_SECONDARY_IP_RANGES"),
  primaryIpRange("PRIMARY_IP_RANGE");

  const RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta fromValue(String value) {
    for (final item in RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeBeta value: $value');
  }
}
