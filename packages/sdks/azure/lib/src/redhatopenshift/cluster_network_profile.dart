// ignore_for_file: unused_element, unnecessary_cast


class ClusterNetworkProfile {
  /// The outbound (egress) routing method. Possible values are `Loadbalancer` and `UserDefinedRouting`. Defaults to `Loadbalancer`. Changing this forces a new resource to be created.
  final String? outboundType;
  /// The CIDR to use for pod IP addresses. Changing this forces a new resource to be created.
  final String podCidr;
  /// Whether a preconfigured network security group is being used on the subnets. Defaults to `false`. Changing this forces a new resource to be created.
  final bool? preconfiguredNetworkSecurityGroupEnabled;
  /// The network range used by the OpenShift service. Changing this forces a new resource to be created.
  final String serviceCidr;

  /// Creates a new [ClusterNetworkProfile].
  /// [outboundType] The outbound (egress) routing method. Possible values are `Loadbalancer` and `UserDefinedRouting`. Defaults to `Loadbalancer`. Changing this forces a new resource to be created.
  /// [podCidr] The CIDR to use for pod IP addresses. Changing this forces a new resource to be created.
  /// [preconfiguredNetworkSecurityGroupEnabled] Whether a preconfigured network security group is being used on the subnets. Defaults to `false`. Changing this forces a new resource to be created.
  /// [serviceCidr] The network range used by the OpenShift service. Changing this forces a new resource to be created.
  ClusterNetworkProfile({
    this.outboundType,
    required this.podCidr,
    this.preconfiguredNetworkSecurityGroupEnabled,
    required this.serviceCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outboundType': ?outboundType,
      'podCidr': podCidr,
      'preconfiguredNetworkSecurityGroupEnabled': ?preconfiguredNetworkSecurityGroupEnabled,
      'serviceCidr': serviceCidr,
    };
  }

  factory ClusterNetworkProfile.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkProfile(
      outboundType: map['outboundType'] == null ? null : map['outboundType'] as String,
      podCidr: map['podCidr'] as String,
      preconfiguredNetworkSecurityGroupEnabled: map['preconfiguredNetworkSecurityGroupEnabled'] == null ? null : map['preconfiguredNetworkSecurityGroupEnabled'] as bool,
      serviceCidr: map['serviceCidr'] as String,
    );
  }
}

