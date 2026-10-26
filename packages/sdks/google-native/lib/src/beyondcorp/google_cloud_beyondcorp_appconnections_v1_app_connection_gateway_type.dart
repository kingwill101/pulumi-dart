import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of hosting used by the gateway.
enum GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType fromValue(String value) {
    for (final item in GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGatewayType value: $value');
  }
}
