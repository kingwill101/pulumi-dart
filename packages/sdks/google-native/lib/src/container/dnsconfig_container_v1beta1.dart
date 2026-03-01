// ignore_for_file: unused_element, unnecessary_cast

import 'dnsconfig_cluster_dns_container_v1beta1.dart';
import 'dnsconfig_cluster_dns_scope_container_v1beta1.dart';

/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfigContainerV1beta1 {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  final DNSConfigClusterDnsContainerV1beta1? clusterDns;
  /// cluster_dns_domain is the suffix used for all cluster service records.
  final String? clusterDnsDomain;
  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  final DNSConfigClusterDnsScopeContainerV1beta1? clusterDnsScope;

  /// Creates a new [DNSConfigContainerV1beta1].
  /// [clusterDns] cluster_dns indicates which in-cluster DNS provider should be used.
  /// [clusterDnsDomain] cluster_dns_domain is the suffix used for all cluster service records.
  /// [clusterDnsScope] cluster_dns_scope indicates the scope of access to cluster DNS records.
  DNSConfigContainerV1beta1({
    this.clusterDns,
    this.clusterDnsDomain,
    this.clusterDnsScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDns': ?clusterDns == null ? null : clusterDns!.value,
      'clusterDnsDomain': ?clusterDnsDomain,
      'clusterDnsScope': ?clusterDnsScope == null ? null : clusterDnsScope!.value,
    };
  }

  factory DNSConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DNSConfigContainerV1beta1(
      clusterDns: map['clusterDns'] == null ? null : DNSConfigClusterDnsContainerV1beta1.fromValue(map['clusterDns'] as String),
      clusterDnsDomain: map['clusterDnsDomain'] == null ? null : map['clusterDnsDomain'] as String,
      clusterDnsScope: map['clusterDnsScope'] == null ? null : DNSConfigClusterDnsScopeContainerV1beta1.fromValue(map['clusterDnsScope'] as String),
    );
  }
}

