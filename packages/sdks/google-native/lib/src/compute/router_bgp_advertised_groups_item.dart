import 'package:pulumi/pulumi.dart' as pulumi;

enum RouterBgpAdvertisedGroupsItem implements pulumi.PulumiEnum<String> {
  allPeerVpcSubnets("ALL_PEER_VPC_SUBNETS"),
  allSubnets("ALL_SUBNETS"),
  allVpcSubnets("ALL_VPC_SUBNETS");

  const RouterBgpAdvertisedGroupsItem(this.wireValue);
  @override
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
