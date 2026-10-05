import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of hosting used by the gateway.
enum GatewayType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const GatewayType(this.wireValue);
  @override
  final String wireValue;

  static GatewayType fromValue(String value) {
    for (final item in GatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayType value: $value');
  }
}
