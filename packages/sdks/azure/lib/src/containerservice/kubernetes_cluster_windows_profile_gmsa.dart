// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterWindowsProfileGmsa {
  /// Specifies the DNS server for Windows gMSA. Set this to an empty string if you have configured the DNS server in the VNet which was used to create the managed cluster.
  final String dnsServer;
  /// Specifies the root domain name for Windows gMSA. Set this to an empty string if you have configured the DNS server in the VNet which was used to create the managed cluster.
  ///
  /// > **Note:** The properties `dns_server` and `root_domain` must both either be set or unset, i.e. empty.
  final String rootDomain;

  /// Creates a new [KubernetesClusterWindowsProfileGmsa].
  /// [dnsServer] Specifies the DNS server for Windows gMSA. Set this to an empty string if you have configured the DNS server in the VNet which was used to create the managed cluster.
  /// [rootDomain] Specifies the root domain name for Windows gMSA. Set this to an empty string if you have configured the DNS server in the VNet which was used to create the managed cluster.
  KubernetesClusterWindowsProfileGmsa({
    required this.dnsServer,
    required this.rootDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServer': dnsServer,
      'rootDomain': rootDomain,
    };
  }

  factory KubernetesClusterWindowsProfileGmsa.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterWindowsProfileGmsa(
      dnsServer: map['dnsServer'] as String,
      rootDomain: map['rootDomain'] as String,
    );
  }
}

