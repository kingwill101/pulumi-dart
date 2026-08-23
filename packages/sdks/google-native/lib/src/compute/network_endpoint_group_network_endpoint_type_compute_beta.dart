/// Type of network endpoints in this network endpoint group. Can be one of GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_FQDN_PORT, INTERNET_IP_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT.
enum NetworkEndpointGroupNetworkEndpointTypeComputeBeta {
  gceVmIp("GCE_VM_IP"),
  gceVmIpPort("GCE_VM_IP_PORT"),
  internetFqdnPort("INTERNET_FQDN_PORT"),
  internetIpPort("INTERNET_IP_PORT"),
  nonGcpPrivateIpPort("NON_GCP_PRIVATE_IP_PORT"),
  privateServiceConnect("PRIVATE_SERVICE_CONNECT"),
  serverless("SERVERLESS");

  const NetworkEndpointGroupNetworkEndpointTypeComputeBeta(this.wireValue);
  final String wireValue;

  static NetworkEndpointGroupNetworkEndpointTypeComputeBeta fromValue(String value) {
    for (final item in NetworkEndpointGroupNetworkEndpointTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkEndpointGroupNetworkEndpointTypeComputeBeta value: $value');
  }
}
