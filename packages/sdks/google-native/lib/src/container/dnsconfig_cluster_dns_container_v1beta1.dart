import 'package:pulumi/pulumi.dart' as pulumi;

/// cluster_dns indicates which in-cluster DNS provider should be used.
enum DNSConfigClusterDnsContainerV1beta1 implements pulumi.PulumiEnum<String> {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  platformDefault("PLATFORM_DEFAULT"),
  cloudDns("CLOUD_DNS"),
  kubeDns("KUBE_DNS");

  const DNSConfigClusterDnsContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static DNSConfigClusterDnsContainerV1beta1 fromValue(String value) {
    for (final item in DNSConfigClusterDnsContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSConfigClusterDnsContainerV1beta1 value: $value');
  }
}
