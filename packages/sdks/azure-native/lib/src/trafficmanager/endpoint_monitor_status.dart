/// The monitoring status of the endpoint.
enum EndpointMonitorStatus {
  checkingEndpoint("CheckingEndpoint"),
  online("Online"),
  degraded("Degraded"),
  disabled("Disabled"),
  inactive("Inactive"),
  stopped("Stopped"),
  unmonitored("Unmonitored");

  const EndpointMonitorStatus(this.wireValue);
  final String wireValue;

  static EndpointMonitorStatus fromValue(String value) {
    for (final item in EndpointMonitorStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointMonitorStatus value: $value');
  }
}

