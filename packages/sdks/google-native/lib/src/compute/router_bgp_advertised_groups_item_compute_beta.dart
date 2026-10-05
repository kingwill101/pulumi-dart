import 'package:pulumi/pulumi.dart' as pulumi;

enum RouterBgpAdvertisedGroupsItemComputeBeta implements pulumi.PulumiEnum<String> {
  allSubnets("ALL_SUBNETS");

  const RouterBgpAdvertisedGroupsItemComputeBeta(this.wireValue);
  @override
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
