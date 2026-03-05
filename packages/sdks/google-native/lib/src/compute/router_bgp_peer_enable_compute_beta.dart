/// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
enum RouterBgpPeerEnableComputeBeta {
  false_("FALSE"),
  true_("TRUE");

  const RouterBgpPeerEnableComputeBeta(this.wireValue);
  final String wireValue;

  static RouterBgpPeerEnableComputeBeta fromValue(String value) {
    for (final item in RouterBgpPeerEnableComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerEnableComputeBeta value: $value');
  }
}

