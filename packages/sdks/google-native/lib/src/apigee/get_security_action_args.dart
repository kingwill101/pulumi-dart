// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_security_action_args_doc}
/// Arguments for getSecurityAction.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_security_action_args_doc}
class GetSecurityActionArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityActionId;

  /// Creates a new [GetSecurityActionArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [securityActionId] Required.
  const GetSecurityActionArgs({
    required this.environmentId,
    required this.organizationId,
    required this.securityActionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'securityActionId': securityActionId,
    };
  }

  factory GetSecurityActionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityActionArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      securityActionId: pulumi.Input.fromValue(map['securityActionId'] as String),
    );
  }
}

