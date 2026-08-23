/// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
enum RouterBgpPeerBfdSessionInitializationModeComputeBeta {
  active("ACTIVE"),
  disabled("DISABLED"),
  passive("PASSIVE");

  const RouterBgpPeerBfdSessionInitializationModeComputeBeta(this.wireValue);
  final String wireValue;

  static RouterBgpPeerBfdSessionInitializationModeComputeBeta fromValue(String value) {
    for (final item in RouterBgpPeerBfdSessionInitializationModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerBfdSessionInitializationModeComputeBeta value: $value');
  }
}
