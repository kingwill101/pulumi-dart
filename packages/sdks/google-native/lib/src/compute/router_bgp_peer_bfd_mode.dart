/// The BFD session initialization mode for this BGP peer. If set to ACTIVE, the Cloud Router will initiate the BFD session for this BGP peer. If set to PASSIVE, the Cloud Router will wait for the peer router to initiate the BFD session for this BGP peer. If set to DISABLED, BFD is disabled for this BGP peer. The default is PASSIVE.
enum RouterBgpPeerBfdMode {
  active("ACTIVE"),
  disabled("DISABLED"),
  passive("PASSIVE");

  const RouterBgpPeerBfdMode(this.value);
  final String value;

  static RouterBgpPeerBfdMode fromValue(String value) {
    for (final item in RouterBgpPeerBfdMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerBfdMode value: $value');
  }
}

