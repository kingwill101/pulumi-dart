/// cluster_dns_scope indicates the scope of access to cluster DNS records.
enum DNSConfigClusterDnsScopeContainerV1beta1 {
  dnsScopeUnspecified("DNS_SCOPE_UNSPECIFIED"),
  clusterScope("CLUSTER_SCOPE"),
  vpcScope("VPC_SCOPE");

  const DNSConfigClusterDnsScopeContainerV1beta1(this.wireValue);
  final String wireValue;

  static DNSConfigClusterDnsScopeContainerV1beta1 fromValue(String value) {
    for (final item in DNSConfigClusterDnsScopeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSConfigClusterDnsScopeContainerV1beta1 value: $value');
  }
}
