/// Required. Protocol used by vCenter to send logs to a logging server.
enum LoggingServerProtocol {
  protocolUnspecified("PROTOCOL_UNSPECIFIED"),
  udp("UDP"),
  tcp("TCP");

  const LoggingServerProtocol(this.wireValue);
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

