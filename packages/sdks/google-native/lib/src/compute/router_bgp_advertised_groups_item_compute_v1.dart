import 'package:pulumi/pulumi.dart' as pulumi;

enum RouterBgpAdvertisedGroupsItemComputeV1 implements pulumi.PulumiEnum<String> {
  allSubnets("ALL_SUBNETS");

  const RouterBgpAdvertisedGroupsItemComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpAdvertisedGroupsItemComputeV1 fromValue(String value) {
    for (final item in RouterBgpAdvertisedGroupsItemComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpAdvertisedGroupsItemComputeV1 value: $value');
  }
}
