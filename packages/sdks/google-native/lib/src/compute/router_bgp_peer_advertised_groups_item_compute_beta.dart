enum RouterBgpPeerAdvertisedGroupsItemComputeBeta {
  allSubnets("ALL_SUBNETS");

  const RouterBgpPeerAdvertisedGroupsItemComputeBeta(this.wireValue);
  final String wireValue;

  static RouterBgpPeerAdvertisedGroupsItemComputeBeta fromValue(String value) {
    for (final item in RouterBgpPeerAdvertisedGroupsItemComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertisedGroupsItemComputeBeta value: $value');
  }
}

