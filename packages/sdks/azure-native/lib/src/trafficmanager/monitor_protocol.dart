/// The protocol (HTTP, HTTPS or TCP) used to probe for endpoint health.
enum MonitorProtocol {
  hTTP("HTTP"),
  hTTPS("HTTPS"),
  tCP("TCP");

  const MonitorProtocol(this.value);
  final String value;

  static MonitorProtocol fromValue(String value) {
    for (final item in MonitorProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitorProtocol value: $value');
  }
}

