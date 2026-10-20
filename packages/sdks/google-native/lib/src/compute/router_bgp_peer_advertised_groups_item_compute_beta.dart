import 'package:pulumi/pulumi.dart' as pulumi;

enum RouterBgpPeerAdvertisedGroupsItemComputeBeta implements pulumi.PulumiEnum<String> {
  allSubnets("ALL_SUBNETS");

  const RouterBgpPeerAdvertisedGroupsItemComputeBeta(this.wireValue);
  @override
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
