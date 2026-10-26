import 'package:pulumi/pulumi.dart' as pulumi;

/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseModeComputeV1 implements pulumi.PulumiEnum<String> {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseModeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpPeerAdvertiseModeComputeV1 fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertiseModeComputeV1 value: $value');
  }
}
