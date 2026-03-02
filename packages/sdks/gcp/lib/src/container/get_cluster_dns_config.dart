// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterDnsConfig {
  /// Enable additive VPC scope DNS in a GKE cluster.
  final pulumi.Input<String> additiveVpcScopeDnsDomain;
  /// Which in-cluster DNS provider should be used.
  final pulumi.Input<String> clusterDns;
  /// The suffix used for all cluster service records.
  final pulumi.Input<String> clusterDnsDomain;
  /// The scope of access to cluster DNS records.
  final pulumi.Input<String> clusterDnsScope;

  /// Creates a new [GetClusterDnsConfig].
  /// [additiveVpcScopeDnsDomain] Enable additive VPC scope DNS in a GKE cluster.
  /// [clusterDns] Which in-cluster DNS provider should be used.
  /// [clusterDnsDomain] The suffix used for all cluster service records.
  /// [clusterDnsScope] The scope of access to cluster DNS records.
  GetClusterDnsConfig({
    required this.additiveVpcScopeDnsDomain,
    required this.clusterDns,
    required this.clusterDnsDomain,
    required this.clusterDnsScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additiveVpcScopeDnsDomain': additiveVpcScopeDnsDomain,
      'clusterDns': clusterDns,
      'clusterDnsDomain': clusterDnsDomain,
      'clusterDnsScope': clusterDnsScope,
    };
  }

  factory GetClusterDnsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterDnsConfig(
      additiveVpcScopeDnsDomain: (map['additiveVpcScopeDnsDomain'] as String).input(),
      clusterDns: (map['clusterDns'] as String).input(),
      clusterDnsDomain: (map['clusterDnsDomain'] as String).input(),
      clusterDnsScope: (map['clusterDnsScope'] as String).input(),
    );
  }
}

