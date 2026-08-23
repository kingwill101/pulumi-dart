// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfigResponse {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  final pulumi.Input<String> clusterDns;
  /// cluster_dns_domain is the suffix used for all cluster service records.
  final pulumi.Input<String> clusterDnsDomain;
  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  final pulumi.Input<String> clusterDnsScope;

  /// Creates a new [DNSConfigResponse].
  /// [clusterDns] cluster_dns indicates which in-cluster DNS provider should be used.
  /// [clusterDnsDomain] cluster_dns_domain is the suffix used for all cluster service records.
  /// [clusterDnsScope] cluster_dns_scope indicates the scope of access to cluster DNS records.
  const DNSConfigResponse({
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

  factory DNSConfigResponse.fromMap(Map<String, dynamic> map) {
    return DNSConfigResponse(
      clusterDns: pulumi.Input.fromValue(map['clusterDns'] as String),
      clusterDnsDomain: pulumi.Input.fromValue(map['clusterDnsDomain'] as String),
      clusterDnsScope: pulumi.Input.fromValue(map['clusterDnsScope'] as String),
    );
  }
}
