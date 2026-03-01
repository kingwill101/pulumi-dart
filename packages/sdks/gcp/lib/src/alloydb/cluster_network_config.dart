// ignore_for_file: unused_element, unnecessary_cast


class ClusterNetworkConfig {
  /// The name of the allocated IP range for the private IP AlloyDB cluster. For example: "google-managed-services-default".
  /// If set, the instance IPs for this cluster will be created in the allocated range.
  final String? allocatedIpRange;
  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
  /// It is specified in the form: "projects/{projectNumber}/global/networks/{network_id}".
  final String? network;

  /// Creates a new [ClusterNetworkConfig].
  /// [allocatedIpRange] The name of the allocated IP range for the private IP AlloyDB cluster. For example: "google-managed-services-default".
  /// [network] The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster.
  ClusterNetworkConfig({
    this.allocatedIpRange,
    this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': ?allocatedIpRange,
      'network': ?network,
    };
  }

  factory ClusterNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkConfig(
      allocatedIpRange: map['allocatedIpRange'] == null ? null : map['allocatedIpRange'] as String,
      network: map['network'] == null ? null : map['network'] as String,
    );
  }
}

