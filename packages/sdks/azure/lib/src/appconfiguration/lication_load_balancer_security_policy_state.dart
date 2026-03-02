// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicationLoadBalancerSecurityPolicy resources.
class LicationLoadBalancerSecurityPolicyState {
  /// The ID of the Application Load Balancer. Changing this forces a new Application Gateway for Containers Security Policy to be created.
  final pulumi.Input<String>? applicationLoadBalancerId;
  /// The Azure Region where the Application Load Balancer Security Policy should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Application Load Balancer Security Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Application Load Balancer Security Policy.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Web Application Firewall Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  final pulumi.Input<String>? webApplicationFirewallPolicyId;

  /// Creates a new [LicationLoadBalancerSecurityPolicyState].
  /// [applicationLoadBalancerId] The ID of the Application Load Balancer. Changing this forces a new Application Gateway for Containers Security Policy to be created.
  /// [location] The Azure Region where the Application Load Balancer Security Policy should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Application Load Balancer Security Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  /// [tags] A mapping of tags which should be assigned to the Application Load Balancer Security Policy.
  /// [webApplicationFirewallPolicyId] The ID of the Web Application Firewall Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  LicationLoadBalancerSecurityPolicyState({
    this.applicationLoadBalancerId,
    this.location,
    this.name,
    this.tags,
    this.webApplicationFirewallPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLoadBalancerId': ?applicationLoadBalancerId,
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'webApplicationFirewallPolicyId': ?webApplicationFirewallPolicyId,
    };
  }

  factory LicationLoadBalancerSecurityPolicyState.fromMap(Map<String, dynamic> map) {
    return LicationLoadBalancerSecurityPolicyState(
      applicationLoadBalancerId: map['applicationLoadBalancerId'] == null ? null : (map['applicationLoadBalancerId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      webApplicationFirewallPolicyId: map['webApplicationFirewallPolicyId'] == null ? null : (map['webApplicationFirewallPolicyId']! as String).input(),
    );
  }
}

