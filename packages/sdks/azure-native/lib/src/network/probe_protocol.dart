/// The protocol of the end point. If 'Tcp' is specified, a received ACK is required for the probe to be successful. If 'Http' or 'Https' is specified, a 200 OK response from the specifies URI is required for the probe to be successful.
enum ProbeProtocol {
  valueHttp("Http"),
  valueTcp("Tcp"),
  valueHttps("Https");

  const ProbeProtocol(this.wireValue);
  final String wireValue;

  static ProbeProtocol fromValue(String value) {
    for (final item in ProbeProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProbeProtocol value: $value');
  }
}

