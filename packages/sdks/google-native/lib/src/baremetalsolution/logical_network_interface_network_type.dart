/// Type of network.
enum LogicalNetworkInterfaceNetworkType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  client("CLIENT"),
  private("PRIVATE");

  const LogicalNetworkInterfaceNetworkType(this.wireValue);
  final String wireValue;

  static LogicalNetworkInterfaceNetworkType fromValue(String value) {
    for (final item in LogicalNetworkInterfaceNetworkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogicalNetworkInterfaceNetworkType value: $value');
  }
}

