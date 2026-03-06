// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_get_security_gateway_application_iam_policy_get_security_gateway_application_iam_policy_args_doc}
/// Arguments for getSecurityGatewayApplicationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_get_security_gateway_application_iam_policy_get_security_gateway_application_iam_policy_args_doc}
class GetSecurityGatewayApplicationIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> applicationId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// ID of the Security Gateway resource this belongs to. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> securityGatewayId;

  /// Creates a new [GetSecurityGatewayApplicationIamPolicyArgs].
  /// [applicationId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [securityGatewayId] ID of the Security Gateway resource this belongs to. Used to find the parent resource to bind the IAM policy to
  const GetSecurityGatewayApplicationIamPolicyArgs({
    required this.applicationId,
    this.project,
    required this.securityGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'project': ?project,
      'securityGatewayId': securityGatewayId,
    };
  }

  factory GetSecurityGatewayApplicationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayApplicationIamPolicyArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGatewayId: pulumi.Input.fromValue(map['securityGatewayId'] as String),
    );
  }
}

