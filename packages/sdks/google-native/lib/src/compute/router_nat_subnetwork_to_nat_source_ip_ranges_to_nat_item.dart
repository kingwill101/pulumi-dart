enum RouterNatSubnetworkToNatSourceIpRangesToNatItem {
  allIpRanges("ALL_IP_RANGES"),
  listOfSecondaryIpRanges("LIST_OF_SECONDARY_IP_RANGES"),
  primaryIpRange("PRIMARY_IP_RANGE");

  const RouterNatSubnetworkToNatSourceIpRangesToNatItem(this.value);
  final String value;

  static RouterNatSubnetworkToNatSourceIpRangesToNatItem fromValue(String value) {
    for (final item in RouterNatSubnetworkToNatSourceIpRangesToNatItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatSubnetworkToNatSourceIpRangesToNatItem value: $value');
  }
}

