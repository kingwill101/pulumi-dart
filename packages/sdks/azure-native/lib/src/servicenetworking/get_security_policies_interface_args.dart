// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_get_security_policies_interface_args_doc}
/// Arguments for getSecurityPoliciesInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_get_security_policies_interface_args_doc}
class GetSecurityPoliciesInterfaceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SecurityPolicy
  final pulumi.Input<String> securityPolicyName;
  /// traffic controller name for path
  final pulumi.Input<String> trafficControllerName;

  /// Creates a new [GetSecurityPoliciesInterfaceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityPolicyName] SecurityPolicy
  /// [trafficControllerName] traffic controller name for path
  GetSecurityPoliciesInterfaceArgs({
    required this.resourceGroupName,
    required this.securityPolicyName,
    required this.trafficControllerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'securityPolicyName': securityPolicyName,
      'trafficControllerName': trafficControllerName,
    };
  }

  factory GetSecurityPoliciesInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesInterfaceArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securityPolicyName: pulumi.Input.fromValue(map['securityPolicyName'] as String),
      trafficControllerName: pulumi.Input.fromValue(map['trafficControllerName'] as String),
    );
  }
}

