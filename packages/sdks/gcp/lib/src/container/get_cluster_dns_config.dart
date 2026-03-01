// ignore_for_file: unused_element, unnecessary_cast


class GetClusterDnsConfig {
  /// Enable additive VPC scope DNS in a GKE cluster.
  final String additiveVpcScopeDnsDomain;
  /// Which in-cluster DNS provider should be used.
  final String clusterDns;
  /// The suffix used for all cluster service records.
  final String clusterDnsDomain;
  /// The scope of access to cluster DNS records.
  final String clusterDnsScope;

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
      additiveVpcScopeDnsDomain: map['additiveVpcScopeDnsDomain'] as String,
      clusterDns: map['clusterDns'] as String,
      clusterDnsDomain: map['clusterDnsDomain'] as String,
      clusterDnsScope: map['clusterDnsScope'] as String,
    );
  }
}

