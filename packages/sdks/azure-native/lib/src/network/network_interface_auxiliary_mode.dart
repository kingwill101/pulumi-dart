/// Auxiliary mode of Network Interface resource.
enum NetworkInterfaceAuxiliaryMode {
  valueNone("None"),
  valueMaxConnections("MaxConnections"),
  valueFloating("Floating"),
  valueAcceleratedConnections("AcceleratedConnections");

  const NetworkInterfaceAuxiliaryMode(this.wireValue);
  final String wireValue;

  static NetworkInterfaceAuxiliaryMode fromValue(String value) {
    for (final item in NetworkInterfaceAuxiliaryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceAuxiliaryMode value: $value');
  }
}

