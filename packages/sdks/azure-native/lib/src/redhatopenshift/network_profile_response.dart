// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_profile_response.dart';

/// NetworkProfile represents a network profile.
class NetworkProfileResponse {
  /// The cluster load balancer profile.
  final pulumi.Input<LoadBalancerProfileResponse>? loadBalancerProfile;
  /// The OutboundType used for egress traffic.
  final pulumi.Input<String>? outboundType;
  /// The CIDR used for OpenShift/Kubernetes Pods.
  final pulumi.Input<String>? podCidr;
  /// Specifies whether subnets are pre-attached with an NSG
  final pulumi.Input<String>? preconfiguredNSG;
  /// The CIDR used for OpenShift/Kubernetes Services.
  final pulumi.Input<String>? serviceCidr;

  /// Creates a new [NetworkProfileResponse].
  /// [loadBalancerProfile] The cluster load balancer profile.
  /// [outboundType] The OutboundType used for egress traffic.
  /// [podCidr] The CIDR used for OpenShift/Kubernetes Pods.
  /// [preconfiguredNSG] Specifies whether subnets are pre-attached with an NSG
  /// [serviceCidr] The CIDR used for OpenShift/Kubernetes Services.
  NetworkProfileResponse({
    this.loadBalancerProfile,
    this.outboundType,
    this.podCidr,
    this.preconfiguredNSG,
    this.serviceCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerProfile': ?pulumi.Input.mapOptionalInputValue<LoadBalancerProfileResponse, Map<String, dynamic>>(loadBalancerProfile, (value) => value.toMap()),
      'outboundType': ?outboundType,
      'podCidr': ?podCidr,
      'preconfiguredNSG': ?preconfiguredNSG,
      'serviceCidr': ?serviceCidr,
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      loadBalancerProfile: map['loadBalancerProfile'] == null ? null : (LoadBalancerProfileResponse.fromMap((map['loadBalancerProfile'] as Map).cast<String, dynamic>())).input(),
      outboundType: map['outboundType'] == null ? null : (map['outboundType'] as String).input(),
      podCidr: map['podCidr'] == null ? null : (map['podCidr'] as String).input(),
      preconfiguredNSG: map['preconfiguredNSG'] == null ? null : (map['preconfiguredNSG'] as String).input(),
      serviceCidr: map['serviceCidr'] == null ? null : (map['serviceCidr'] as String).input(),
    );
  }
}

