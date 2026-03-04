/// cluster_dns indicates which in-cluster DNS provider should be used.
enum DNSConfigClusterDns {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  platformDefault("PLATFORM_DEFAULT"),
  cloudDns("CLOUD_DNS"),
  kubeDns("KUBE_DNS");

  const DNSConfigClusterDns(this.wireValue);
  final String wireValue;

  static DNSConfigClusterDns fromValue(String value) {
    for (final item in DNSConfigClusterDns.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSConfigClusterDns value: $value');
  }
}
