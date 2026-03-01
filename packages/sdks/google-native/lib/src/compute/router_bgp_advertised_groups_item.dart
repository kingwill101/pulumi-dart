enum RouterBgpAdvertisedGroupsItem {
  allPeerVpcSubnets("ALL_PEER_VPC_SUBNETS"),
  allSubnets("ALL_SUBNETS"),
  allVpcSubnets("ALL_VPC_SUBNETS");

  const RouterBgpAdvertisedGroupsItem(this.value);
  final String value;

  static RouterBgpAdvertisedGroupsItem fromValue(String value) {
    for (final item in RouterBgpAdvertisedGroupsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertisedGroupsItem value: $value');
  }
}

