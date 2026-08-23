enum RouterBgpAdvertisedGroupsItemComputeBeta {
  allSubnets("ALL_SUBNETS");

  const RouterBgpAdvertisedGroupsItemComputeBeta(this.wireValue);
  final String wireValue;

  static RouterBgpAdvertisedGroupsItemComputeBeta fromValue(String value) {
    for (final item in RouterBgpAdvertisedGroupsItemComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertisedGroupsItemComputeBeta value: $value');
  }
}
