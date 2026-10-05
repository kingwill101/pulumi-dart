import 'package:pulumi/pulumi.dart' as pulumi;

/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseModeComputeBeta implements pulumi.PulumiEnum<String> {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseModeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpPeerAdvertiseModeComputeBeta fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertiseModeComputeBeta value: $value');
  }
}
