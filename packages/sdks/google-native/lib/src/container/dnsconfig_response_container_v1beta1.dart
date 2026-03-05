// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfigResponseContainerV1beta1 {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  final pulumi.Input<String> clusterDns;
  /// cluster_dns_domain is the suffix used for all cluster service records.
  final pulumi.Input<String> clusterDnsDomain;
  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  final pulumi.Input<String> clusterDnsScope;

  /// Creates a new [DNSConfigResponseContainerV1beta1].
  /// [clusterDns] cluster_dns indicates which in-cluster DNS provider should be used.
  /// [clusterDnsDomain] cluster_dns_domain is the suffix used for all cluster service records.
  /// [clusterDnsScope] cluster_dns_scope indicates the scope of access to cluster DNS records.
  DNSConfigResponseContainerV1beta1({
    required this.clusterDns,
    required this.clusterDnsDomain,
    required this.clusterDnsScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDns': clusterDns,
      'clusterDnsDomain': clusterDnsDomain,
      'clusterDnsScope': clusterDnsScope,
    };
  }

  factory DNSConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DNSConfigResponseContainerV1beta1(
      clusterDns: pulumi.Input.fromValue(map['clusterDns'] as String),
      clusterDnsDomain: pulumi.Input.fromValue(map['clusterDnsDomain'] as String),
      clusterDnsScope: pulumi.Input.fromValue(map['clusterDnsScope'] as String),
    );
  }
}

