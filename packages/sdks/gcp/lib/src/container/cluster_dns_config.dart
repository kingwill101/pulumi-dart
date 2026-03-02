// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterDnsConfig {
  /// This will enable Cloud DNS additive VPC scope. Must provide a domain name that is unique within the VPC. For this to work `cluster_dns = "CLOUD_DNS"` and `cluster_dns_scope = "CLUSTER_SCOPE"` must both be set as well.
  final pulumi.Input<String>? additiveVpcScopeDnsDomain;
  /// Which in-cluster DNS provider should be used. `PROVIDER_UNSPECIFIED` (default) or `PLATFORM_DEFAULT` or `CLOUD_DNS` or `KUBE_DNS`.
  final pulumi.Input<String>? clusterDns;
  /// The suffix used for all cluster service records.
  final pulumi.Input<String>? clusterDnsDomain;
  /// The scope of access to cluster DNS records. `DNS_SCOPE_UNSPECIFIED` or `CLUSTER_SCOPE` or `VPC_SCOPE`. If the `cluster_dns` field is set to `CLOUD_DNS`, `DNS_SCOPE_UNSPECIFIED` and empty/null behave like `CLUSTER_SCOPE`.
  final pulumi.Input<String>? clusterDnsScope;

  /// Creates a new [ClusterDnsConfig].
  /// [additiveVpcScopeDnsDomain] This will enable Cloud DNS additive VPC scope. Must provide a domain name that is unique within the VPC. For this to work `cluster_dns = "CLOUD_DNS"` and `cluster_dns_scope = "CLUSTER_SCOPE"` must both be set as well.
  /// [clusterDns] Which in-cluster DNS provider should be used. `PROVIDER_UNSPECIFIED` (default) or `PLATFORM_DEFAULT` or `CLOUD_DNS` or `KUBE_DNS`.
  /// [clusterDnsDomain] The suffix used for all cluster service records.
  /// [clusterDnsScope] The scope of access to cluster DNS records. `DNS_SCOPE_UNSPECIFIED` or `CLUSTER_SCOPE` or `VPC_SCOPE`. If the `cluster_dns` field is set to `CLOUD_DNS`, `DNS_SCOPE_UNSPECIFIED` and empty/null behave like `CLUSTER_SCOPE`.
  ClusterDnsConfig({
    this.additiveVpcScopeDnsDomain,
    this.clusterDns,
    this.clusterDnsDomain,
    this.clusterDnsScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additiveVpcScopeDnsDomain': ?additiveVpcScopeDnsDomain,
      'clusterDns': ?clusterDns,
      'clusterDnsDomain': ?clusterDnsDomain,
      'clusterDnsScope': ?clusterDnsScope,
    };
  }

  factory ClusterDnsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterDnsConfig(
      additiveVpcScopeDnsDomain: map['additiveVpcScopeDnsDomain'] == null ? null : (map['additiveVpcScopeDnsDomain']! as String).input(),
      clusterDns: map['clusterDns'] == null ? null : (map['clusterDns']! as String).input(),
      clusterDnsDomain: map['clusterDnsDomain'] == null ? null : (map['clusterDnsDomain']! as String).input(),
      clusterDnsScope: map['clusterDnsScope'] == null ? null : (map['clusterDnsScope']! as String).input(),
    );
  }
}

