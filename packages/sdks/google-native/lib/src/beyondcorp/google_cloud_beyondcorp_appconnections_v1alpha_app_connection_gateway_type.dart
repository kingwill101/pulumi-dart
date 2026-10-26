import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of hosting used by the gateway.
enum GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  gcpRegionalMig("GCP_REGIONAL_MIG");

  const GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType fromValue(String value) {
    for (final item in GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType value: $value');
  }
}
