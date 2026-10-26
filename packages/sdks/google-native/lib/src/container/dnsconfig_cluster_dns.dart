import 'package:pulumi/pulumi.dart' as pulumi;

/// cluster_dns indicates which in-cluster DNS provider should be used.
enum DNSConfigClusterDns implements pulumi.PulumiEnum<String> {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  platformDefault("PLATFORM_DEFAULT"),
  cloudDns("CLOUD_DNS"),
  kubeDns("KUBE_DNS");

  const DNSConfigClusterDns(this.wireValue);
  @override
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
