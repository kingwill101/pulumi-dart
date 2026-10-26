import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
enum NetworkingConfigConnectionType implements pulumi.PulumiEnum<String> {
  connectionTypeUnspecified("CONNECTION_TYPE_UNSPECIFIED"),
  vpcPeering("VPC_PEERING"),
  privateServiceConnect("PRIVATE_SERVICE_CONNECT");

  const NetworkingConfigConnectionType(this.wireValue);
  @override
  final String wireValue;

  static NetworkingConfigConnectionType fromValue(String value) {
    for (final item in NetworkingConfigConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkingConfigConnectionType value: $value');
  }
}
