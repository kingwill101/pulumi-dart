/// User-specified flag to indicate which mode to use for advertisement.
enum RouterBgpPeerAdvertiseMode {
  custom("CUSTOM"),
  default_("DEFAULT");

  const RouterBgpPeerAdvertiseMode(this.wireValue);
  final String wireValue;

  static RouterBgpPeerAdvertiseMode fromValue(String value) {
    for (final item in RouterBgpPeerAdvertiseMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterBgpPeerAdvertiseMode value: $value');
  }
}

