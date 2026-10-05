import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Protocol used by vCenter to send logs to a logging server.
enum LoggingServerProtocol implements pulumi.PulumiEnum<String> {
  protocolUnspecified("PROTOCOL_UNSPECIFIED"),
  udp("UDP"),
  tcp("TCP");

  const LoggingServerProtocol(this.wireValue);
  @override
  final String wireValue;

  static LoggingServerProtocol fromValue(String value) {
    for (final item in LoggingServerProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingServerProtocol value: $value');
  }
}
