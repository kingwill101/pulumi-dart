import 'package:pulumi/pulumi.dart' as pulumi;

/// The monitoring status of the endpoint.
enum EndpointMonitorStatus implements pulumi.PulumiEnum<String> {
  checkingEndpoint("CheckingEndpoint"),
  online("Online"),
  degraded("Degraded"),
  disabled("Disabled"),
  inactive("Inactive"),
  stopped("Stopped"),
  unmonitored("Unmonitored");

  const EndpointMonitorStatus(this.wireValue);
  @override
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
