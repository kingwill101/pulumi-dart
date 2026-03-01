/// The kind of the service
enum ServiceKind {
  valueSignalR("SignalR"),
  valueRawWebSockets("RawWebSockets");

  const ServiceKind(this.value);
  final String value;

  static ServiceKind fromValue(String value) {
    for (final item in ServiceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceKind value: $value');
  }
}

