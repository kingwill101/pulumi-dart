enum RouterNatSubnetworkToNatSourceIpRangesToNatItem {
  allIpRanges("ALL_IP_RANGES"),
  listOfSecondaryIpRanges("LIST_OF_SECONDARY_IP_RANGES"),
  primaryIpRange("PRIMARY_IP_RANGE");

  const RouterNatSubnetworkToNatSourceIpRangesToNatItem(this.wireValue);
  final String wireValue;

  static RouterNatSubnetworkToNatSourceIpRangesToNatItem fromValue(String value) {
    for (final item in RouterNatSubnetworkToNatSourceIpRangesToNatItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatSubnetworkToNatSourceIpRangesToNatItem value: $value');
  }
}
