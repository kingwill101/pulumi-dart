/// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is DISABLED.
enum RouterBgpPeerBfdSessionInitializationModeComputeV1 {
  active("ACTIVE"),
  disabled("DISABLED"),
  passive("PASSIVE");

  const RouterBgpPeerBfdSessionInitializationModeComputeV1(this.wireValue);
  final String wireValue;

  static RouterBgpPeerBfdSessionInitializationModeComputeV1 fromValue(String value) {
    for (final item in RouterBgpPeerBfdSessionInitializationModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerBfdSessionInitializationModeComputeV1 value: $value');
  }
}

