/// The field indicating if Microsoft provides session ip addresses.
enum SessionAddressProvider {
  valueMicrosoft("Microsoft"),
  valuePeer("Peer");

  const SessionAddressProvider(this.value);
  final String value;

  static SessionAddressProvider fromValue(String value) {
    for (final item in SessionAddressProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionAddressProvider value: $value');
  }
}

