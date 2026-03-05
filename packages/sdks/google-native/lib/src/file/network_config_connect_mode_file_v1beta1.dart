/// The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
enum NetworkConfigConnectModeFileV1beta1 {
  connectModeUnspecified("CONNECT_MODE_UNSPECIFIED"),
  directPeering("DIRECT_PEERING"),
  privateServiceAccess("PRIVATE_SERVICE_ACCESS");

  const NetworkConfigConnectModeFileV1beta1(this.wireValue);
  final String wireValue;

  static NetworkConfigConnectModeFileV1beta1 fromValue(String value) {
    for (final item in NetworkConfigConnectModeFileV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigConnectModeFileV1beta1 value: $value');
  }
}

