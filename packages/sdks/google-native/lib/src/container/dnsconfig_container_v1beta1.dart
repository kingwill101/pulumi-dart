// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dnsconfig_cluster_dns_container_v1beta1.dart';
import 'dnsconfig_cluster_dns_scope_container_v1beta1.dart';

/// DNSConfig contains the desired set of options for configuring clusterDNS.
class DNSConfigContainerV1beta1 {
  /// cluster_dns indicates which in-cluster DNS provider should be used.
  final pulumi.Input<DNSConfigClusterDnsContainerV1beta1>? clusterDns;

  /// cluster_dns_domain is the suffix used for all cluster service records.
  final pulumi.Input<String>? clusterDnsDomain;

  /// cluster_dns_scope indicates the scope of access to cluster DNS records.
  final pulumi.Input<DNSConfigClusterDnsScopeContainerV1beta1>? clusterDnsScope;

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
      'clusterDns':
          ?pulumi.Input.mapOptionalInputValue<
            DNSConfigClusterDnsContainerV1beta1,
            String
          >(clusterDns, (value) => value.wireValue),
      'clusterDnsDomain': ?clusterDnsDomain,
      'clusterDnsScope':
          ?pulumi.Input.mapOptionalInputValue<
            DNSConfigClusterDnsScopeContainerV1beta1,
            String
          >(clusterDnsScope, (value) => value.wireValue),
    };
  }

  factory DNSConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DNSConfigContainerV1beta1(
      clusterDns: (() {
        final guardedValue = map['clusterDns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DNSConfigClusterDnsContainerV1beta1.fromValue(guardedValue as String),
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
          DNSConfigClusterDnsScopeContainerV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
