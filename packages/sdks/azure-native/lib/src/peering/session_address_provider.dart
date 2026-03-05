/// The field indicating if Microsoft provides session ip addresses.
enum SessionAddressProvider {
  valueMicrosoft("Microsoft"),
  valuePeer("Peer");

  const SessionAddressProvider(this.wireValue);
  final String wireValue;

  static SessionAddressProvider fromValue(String value) {
    for (final item in SessionAddressProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionAddressProvider value: $value');
  }
}

