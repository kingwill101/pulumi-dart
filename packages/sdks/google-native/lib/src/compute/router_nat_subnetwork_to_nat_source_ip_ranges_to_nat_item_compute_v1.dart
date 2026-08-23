enum RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1 {
  allIpRanges("ALL_IP_RANGES"),
  listOfSecondaryIpRanges("LIST_OF_SECONDARY_IP_RANGES"),
  primaryIpRange("PRIMARY_IP_RANGE");

  const RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1(this.wireValue);
  final String wireValue;

  static RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1 fromValue(String value) {
    for (final item in RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatSubnetworkToNatSourceIpRangesToNatItemComputeV1 value: $value');
  }
}
