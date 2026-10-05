import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of hosting used by the AppGateway.
enum AppGatewayHostType implements pulumi.PulumiEnum<String> {
  hostTypeUnspecified("HOST_TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const AppGatewayHostType(this.wireValue);
  @override
  final String wireValue;

  static AppGatewayHostType fromValue(String value) {
    for (final item in AppGatewayHostType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppGatewayHostType value: $value');
  }
}
