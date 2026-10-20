import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
enum RouterBgpPeerEnableComputeV1 implements pulumi.PulumiEnum<String> {
  false_("FALSE"),
  true_("TRUE");

  const RouterBgpPeerEnableComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RouterBgpPeerEnableComputeV1 fromValue(String value) {
    for (final item in RouterBgpPeerEnableComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerEnableComputeV1 value: $value');
  }
}
