/// Specify the Nat option, which can take one of the following values: - ALL_SUBNETWORKS_ALL_IP_RANGES: All of the IP ranges in every Subnetwork are allowed to Nat. - ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES: All of the primary IP ranges in every Subnetwork are allowed to Nat. - LIST_OF_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field subnetwork below) The default is SUBNETWORK_IP_RANGE_TO_NAT_OPTION_UNSPECIFIED. Note that if this field contains ALL_SUBNETWORKS_ALL_IP_RANGES then there should not be any other Router.Nat section in any Router for this network in this region.
enum RouterNatSourceSubnetworkIpRangesToNatComputeBeta {
  allSubnetworksAllIpRanges("ALL_SUBNETWORKS_ALL_IP_RANGES"),
  allSubnetworksAllPrimaryIpRanges("ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES"),
  listOfSubnetworks("LIST_OF_SUBNETWORKS");

  const RouterNatSourceSubnetworkIpRangesToNatComputeBeta(this.wireValue);
  final String wireValue;

  static RouterNatSourceSubnetworkIpRangesToNatComputeBeta fromValue(String value) {
    for (final item in RouterNatSourceSubnetworkIpRangesToNatComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatSourceSubnetworkIpRangesToNatComputeBeta value: $value');
  }
}
