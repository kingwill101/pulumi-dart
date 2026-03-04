// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dnsconfig_cluster_dns.dart';
import 'dnsconfig_cluster_dns_scope.dart';

/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfig {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  final pulumi.Input<DNSConfigClusterDns>? clusterDns;

  /// cluster_dns_domain is the suffix used for all cluster service records.
  final pulumi.Input<String>? clusterDnsDomain;

  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  final pulumi.Input<DNSConfigClusterDnsScope>? clusterDnsScope;

  /// Creates a new [DNSConfig].
  /// [clusterDns] cluster_dns indicates which in-cluster DNS provider should be used.
  /// [clusterDnsDomain] cluster_dns_domain is the suffix used for all cluster service records.
  /// [clusterDnsScope] cluster_dns_scope indicates the scope of access to cluster DNS records.
  DNSConfig({this.clusterDns, this.clusterDnsDomain, this.clusterDnsScope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterDns':
          ?pulumi.Input.mapOptionalInputValue<DNSConfigClusterDns, String>(
            clusterDns,
            (value) => value.wireValue,
          ),
      'clusterDnsDomain': ?clusterDnsDomain,
      'clusterDnsScope':
          ?pulumi.Input.mapOptionalInputValue<DNSConfigClusterDnsScope, String>(
            clusterDnsScope,
            (value) => value.wireValue,
          ),
    };
  }

  factory DNSConfig.fromMap(Map<String, dynamic> map) {
    return DNSConfig(
      clusterDns: (() {
        final guardedValue = map['clusterDns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DNSConfigClusterDns.fromValue(guardedValue as String),
        );
      })(),
      clusterDnsDomain: (() {
        final guardedValue = map['clusterDnsDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterDnsScope: (() {
        final guardedValue = map['clusterDnsScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DNSConfigClusterDnsScope.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
