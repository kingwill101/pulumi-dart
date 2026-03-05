// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_get_security_gateway_iam_policy_get_security_gateway_iam_policy_args_doc}
/// Arguments for getSecurityGatewayIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_get_security_gateway_iam_policy_get_security_gateway_iam_policy_args_doc}
class GetSecurityGatewayIamPolicyArgs {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> securityGatewayId;

  /// Creates a new [GetSecurityGatewayIamPolicyArgs].
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [project] The ID of the project in which the resource belongs.
  /// [securityGatewayId] Used to find the parent resource to bind the IAM policy to
  GetSecurityGatewayIamPolicyArgs({
    this.location,
    this.project,
    required this.securityGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'securityGatewayId': securityGatewayId,
    };
  }

  factory GetSecurityGatewayIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGatewayId: pulumi.Input.fromValue(map['securityGatewayId'] as String),
    );
  }
}

