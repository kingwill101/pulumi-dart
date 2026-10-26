import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Type of connection for establishing private IP connectivity between the Data Fusion customer project VPC and the corresponding tenant project from a predefined list of available connection modes. If this field is unspecified for a private instance, VPC peering is used.
enum NetworkConfigConnectionType implements pulumi.PulumiEnum<String> {
  connectionTypeUnspecified("CONNECTION_TYPE_UNSPECIFIED"),
  vpcPeering("VPC_PEERING"),
  privateServiceConnectInterfaces("PRIVATE_SERVICE_CONNECT_INTERFACES");

  const NetworkConfigConnectionType(this.wireValue);
  @override
  final String wireValue;

  static NetworkConfigConnectionType fromValue(String value) {
    for (final item in NetworkConfigConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigConnectionType value: $value');
  }
}
