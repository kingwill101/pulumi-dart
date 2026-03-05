/// cluster_dns_scope indicates the scope of access to cluster DNS records.
enum DNSConfigClusterDnsScope {
  dnsScopeUnspecified("DNS_SCOPE_UNSPECIFIED"),
  clusterScope("CLUSTER_SCOPE"),
  vpcScope("VPC_SCOPE");

  const DNSConfigClusterDnsScope(this.wireValue);
  final String wireValue;

  static DNSConfigClusterDnsScope fromValue(String value) {
    for (final item in DNSConfigClusterDnsScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSConfigClusterDnsScope value: $value');
  }
}

