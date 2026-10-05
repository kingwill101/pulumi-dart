import 'package:pulumi/pulumi.dart' as pulumi;

enum RouterBgpPeerAdvertisedGroupsItemComputeV1 implements pulumi.PulumiEnum<String> {
  allSubnets("ALL_SUBNETS");

  const RouterBgpPeerAdvertisedGroupsItemComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpPeerAdvertisedGroupsItemComputeV1 fromValue(String value) {
    for (final item in RouterBgpPeerAdvertisedGroupsItemComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertisedGroupsItemComputeV1 value: $value');
  }
}
