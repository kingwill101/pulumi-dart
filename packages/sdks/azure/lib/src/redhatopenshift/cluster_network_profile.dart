// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworkProfile {
  /// The outbound (egress) routing method. Possible values are `Loadbalancer` and `UserDefinedRouting`. Defaults to `Loadbalancer`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? outboundType;
  /// The CIDR to use for pod IP addresses. Changing this forces a new resource to be created.
  final pulumi.Input<String> podCidr;
  /// Whether a preconfigured network security group is being used on the subnets. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? preconfiguredNetworkSecurityGroupEnabled;
  /// The network range used by the OpenShift service. Changing this forces a new resource to be created.
  final pulumi.Input<String> serviceCidr;

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
      outboundType: (() { final guardedValue = map['outboundType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podCidr: pulumi.Input.fromValue(map['podCidr'] as String),
      preconfiguredNetworkSecurityGroupEnabled: (() { final guardedValue = map['preconfiguredNetworkSecurityGroupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceCidr: pulumi.Input.fromValue(map['serviceCidr'] as String),
    );
  }
}

