import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of network.
enum LogicalNetworkInterfaceNetworkType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  client("CLIENT"),
  private("PRIVATE");

  const LogicalNetworkInterfaceNetworkType(this.wireValue);
  @override
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
