// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_lication_load_balancer_security_policy_lication_load_balancer_security_policy_args_doc}
/// The set of arguments for LicationLoadBalancerSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_lication_load_balancer_security_policy_lication_load_balancer_security_policy_args_doc}
class LicationLoadBalancerSecurityPolicyArgs {
  /// The ID of the Application Load Balancer. Changing this forces a new Application Gateway for Containers Security Policy to be created.
  final pulumi.Input<String> applicationLoadBalancerId;
  /// The Azure Region where the Application Load Balancer Security Policy should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Application Load Balancer Security Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Application Load Balancer Security Policy.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Web Application Firewall Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  final pulumi.Input<String> webApplicationFirewallPolicyId;

  /// Creates a new [LicationLoadBalancerSecurityPolicyArgs].
  /// [applicationLoadBalancerId] The ID of the Application Load Balancer. Changing this forces a new Application Gateway for Containers Security Policy to be created.
  /// [location] The Azure Region where the Application Load Balancer Security Policy should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Application Load Balancer Security Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  /// [tags] A mapping of tags which should be assigned to the Application Load Balancer Security Policy.
  /// [webApplicationFirewallPolicyId] The ID of the Web Application Firewall Policy. Changing this forces a new Application Load Balancer Security Policy to be created.
  const LicationLoadBalancerSecurityPolicyArgs({
    required this.applicationLoadBalancerId,
    this.location,
    this.name,
    this.tags,
    required this.webApplicationFirewallPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLoadBalancerId': applicationLoadBalancerId,
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'webApplicationFirewallPolicyId': webApplicationFirewallPolicyId,
    };
  }

  factory LicationLoadBalancerSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LicationLoadBalancerSecurityPolicyArgs(
      applicationLoadBalancerId: pulumi.Input.fromValue(map['applicationLoadBalancerId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      webApplicationFirewallPolicyId: pulumi.Input.fromValue(map['webApplicationFirewallPolicyId'] as String),
    );
  }
}
