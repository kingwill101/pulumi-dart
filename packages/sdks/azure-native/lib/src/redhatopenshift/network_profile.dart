// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_profile.dart';

/// NetworkProfile represents a network profile.
class NetworkProfile {
  /// The cluster load balancer profile.
  final pulumi.Input<LoadBalancerProfile>? loadBalancerProfile;
  /// The OutboundType used for egress traffic.
  final pulumi.Input<String>? outboundType;
  /// The CIDR used for OpenShift/Kubernetes Pods.
  final pulumi.Input<String>? podCidr;
  /// Specifies whether subnets are pre-attached with an NSG
  final pulumi.Input<String>? preconfiguredNSG;
  /// The CIDR used for OpenShift/Kubernetes Services.
  final pulumi.Input<String>? serviceCidr;

  /// Creates a new [NetworkProfile].
  /// [loadBalancerProfile] The cluster load balancer profile.
  /// [outboundType] The OutboundType used for egress traffic.
  /// [podCidr] The CIDR used for OpenShift/Kubernetes Pods.
  /// [preconfiguredNSG] Specifies whether subnets are pre-attached with an NSG
  /// [serviceCidr] The CIDR used for OpenShift/Kubernetes Services.
  const NetworkProfile({
    this.loadBalancerProfile,
    this.outboundType,
    this.podCidr,
    this.preconfiguredNSG,
    this.serviceCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerProfile': ?pulumi.Input.mapOptionalInputValue<LoadBalancerProfile, Map<String, dynamic>>(loadBalancerProfile, (value) => value.toMap()),
      'outboundType': ?outboundType,
      'podCidr': ?podCidr,
      'preconfiguredNSG': ?preconfiguredNSG,
      'serviceCidr': ?serviceCidr,
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      loadBalancerProfile: (() { final guardedValue = map['loadBalancerProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundType: (() { final guardedValue = map['outboundType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podCidr: (() { final guardedValue = map['podCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preconfiguredNSG: (() { final guardedValue = map['preconfiguredNSG']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceCidr: (() { final guardedValue = map['serviceCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

