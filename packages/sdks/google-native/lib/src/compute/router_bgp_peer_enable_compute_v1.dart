/// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
enum RouterBgpPeerEnableComputeV1 {
  false_("FALSE"),
  true_("TRUE");

  const RouterBgpPeerEnableComputeV1(this.wireValue);
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

