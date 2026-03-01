/// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
enum NetworkingConfigConnectionType {
  connectionTypeUnspecified("CONNECTION_TYPE_UNSPECIFIED"),
  vpcPeering("VPC_PEERING"),
  privateServiceConnect("PRIVATE_SERVICE_CONNECT");

  const NetworkingConfigConnectionType(this.value);
  final String value;

  static NetworkingConfigConnectionType fromValue(String value) {
    for (final item in NetworkingConfigConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkingConfigConnectionType value: $value');
  }
}

