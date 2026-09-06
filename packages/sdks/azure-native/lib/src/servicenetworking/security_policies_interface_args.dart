// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_policy.dart';

/// {@template pulumi_servicenetworking_security_policies_interface_args_doc}
/// The set of arguments for SecurityPoliciesInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_security_policies_interface_args_doc}
class SecurityPoliciesInterfaceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SecurityPolicy
  final pulumi.Input<String?>? securityPolicyName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// traffic controller name for path
  final pulumi.Input<String> trafficControllerName;
  /// Web Application Firewall Policy of the Traffic Controller Security Policy. Single Security Policy can have only one policy type set.
  final pulumi.Input<WafPolicy?>? wafPolicy;

  /// Creates a new [SecurityPoliciesInterfaceArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityPolicyName] SecurityPolicy
  /// [tags] Resource tags.
  /// [trafficControllerName] traffic controller name for path
  /// [wafPolicy] Web Application Firewall Policy of the Traffic Controller Security Policy. Single Security Policy can have only one policy type set.
  const SecurityPoliciesInterfaceArgs({
    this.location,
    required this.resourceGroupName,
    this.securityPolicyName,
    this.tags,
    required this.trafficControllerName,
    this.wafPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'securityPolicyName': ?securityPolicyName,
      'tags': ?tags,
      'trafficControllerName': trafficControllerName,
      'wafPolicy': ?pulumi.Input.mapOptionalInputValue<WafPolicy, Map<String, dynamic>>(wafPolicy, (value) => value.toMap()),
    };
  }

  factory SecurityPoliciesInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPoliciesInterfaceArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityPolicyName: (() { final guardedValue = map['securityPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficControllerName: pulumi.Input.fromValue(map['trafficControllerName'] as String),
      wafPolicy: (() { final guardedValue = map['wafPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WafPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
