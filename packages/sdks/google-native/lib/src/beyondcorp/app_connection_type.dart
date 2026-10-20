import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of network connectivity used by the AppConnection.
enum AppConnectionType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  tcpProxy("TCP_PROXY");

  const AppConnectionType(this.wireValue);
  @override
  final String wireValue;

  static AppConnectionType fromValue(String value) {
    for (final item in AppConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppConnectionType value: $value');
  }
}
