enum RouterBgpAdvertisedGroupsItem {
  allPeerVpcSubnets("ALL_PEER_VPC_SUBNETS"),
  allSubnets("ALL_SUBNETS"),
  allVpcSubnets("ALL_VPC_SUBNETS");

  const RouterBgpAdvertisedGroupsItem(this.wireValue);
  final String wireValue;

  static RouterBgpAdvertisedGroupsItem fromValue(String value) {
    for (final item in RouterBgpAdvertisedGroupsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertisedGroupsItem value: $value');
  }
}
