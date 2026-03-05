/// How to connect back to the operator network, e.g. MAPS
enum Connectivity {
  publicAddress("PublicAddress");

  const Connectivity(this.wireValue);
  final String wireValue;

  static Connectivity fromValue(String value) {
    for (final item in Connectivity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Connectivity value: $value');
  }
}

