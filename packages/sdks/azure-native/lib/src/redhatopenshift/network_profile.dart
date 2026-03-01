// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_profile.dart';

/// NetworkProfile represents a network profile.
class NetworkProfile {
  /// The cluster load balancer profile.
  final LoadBalancerProfile? loadBalancerProfile;
  /// The OutboundType used for egress traffic.
  final String? outboundType;
  /// The CIDR used for OpenShift/Kubernetes Pods.
  final String? podCidr;
  /// Specifies whether subnets are pre-attached with an NSG
  final String? preconfiguredNSG;
  /// The CIDR used for OpenShift/Kubernetes Services.
  final String? serviceCidr;

  /// Creates a new [NetworkProfile].
  /// [loadBalancerProfile] The cluster load balancer profile.
  /// [outboundType] The OutboundType used for egress traffic.
  /// [podCidr] The CIDR used for OpenShift/Kubernetes Pods.
  /// [preconfiguredNSG] Specifies whether subnets are pre-attached with an NSG
  /// [serviceCidr] The CIDR used for OpenShift/Kubernetes Services.
  NetworkProfile({
    this.loadBalancerProfile,
    this.outboundType,
    this.podCidr,
    this.preconfiguredNSG,
    this.serviceCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerProfile': ?loadBalancerProfile == null ? null : loadBalancerProfile!.toMap(),
      'outboundType': ?outboundType,
      'podCidr': ?podCidr,
      'preconfiguredNSG': ?preconfiguredNSG,
      'serviceCidr': ?serviceCidr,
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      loadBalancerProfile: map['loadBalancerProfile'] == null ? null : LoadBalancerProfile.fromMap((map['loadBalancerProfile'] as Map).cast<String, dynamic>()),
      outboundType: map['outboundType'] == null ? null : map['outboundType'] as String,
      podCidr: map['podCidr'] == null ? null : map['podCidr'] as String,
      preconfiguredNSG: map['preconfiguredNSG'] == null ? null : map['preconfiguredNSG'] as String,
      serviceCidr: map['serviceCidr'] == null ? null : map['serviceCidr'] as String,
    );
  }
}

