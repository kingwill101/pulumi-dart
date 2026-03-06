// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_gateway_security_policy_args_doc}
/// Arguments for getGatewaySecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_gateway_security_policy_args_doc}
class GetGatewaySecurityPolicyArgs {
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGatewaySecurityPolicyArgs].
  /// [gatewaySecurityPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetGatewaySecurityPolicyArgs({
    required this.gatewaySecurityPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewaySecurityPolicyId': gatewaySecurityPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGatewaySecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewaySecurityPolicyArgs(
      gatewaySecurityPolicyId: pulumi.Input.fromValue(map['gatewaySecurityPolicyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

