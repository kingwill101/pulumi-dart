/// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
enum NetworkingConfigConnectionTypeComposerV1beta1 {
  connectionTypeUnspecified("CONNECTION_TYPE_UNSPECIFIED"),
  vpcPeering("VPC_PEERING"),
  privateServiceConnect("PRIVATE_SERVICE_CONNECT");

  const NetworkingConfigConnectionTypeComposerV1beta1(this.wireValue);
  final String wireValue;

  static NetworkingConfigConnectionTypeComposerV1beta1 fromValue(String value) {
    for (final item in NetworkingConfigConnectionTypeComposerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkingConfigConnectionTypeComposerV1beta1 value: $value');
  }
}

