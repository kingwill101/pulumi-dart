import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Routing Mode. Default value is set to GLOBAL. For type = PRIVATE_SERVICE_ACCESS, this field can be set to GLOBAL or REGIONAL, for other types only GLOBAL is supported.
enum PrivateConnectionRoutingMode implements pulumi.PulumiEnum<String> {
  routingModeUnspecified("ROUTING_MODE_UNSPECIFIED"),
  global("GLOBAL"),
  regional("REGIONAL");

  const PrivateConnectionRoutingMode(this.wireValue);
  @override
  final String wireValue;

  static PrivateConnectionRoutingMode fromValue(String value) {
    for (final item in PrivateConnectionRoutingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateConnectionRoutingMode value: $value');
  }
}
