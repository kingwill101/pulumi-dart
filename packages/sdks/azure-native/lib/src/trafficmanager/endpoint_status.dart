import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method.
enum EndpointStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const EndpointStatus(this.wireValue);
  @override
  final String wireValue;

  static EndpointStatus fromValue(String value) {
    for (final item in EndpointStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointStatus value: $value');
  }
}
