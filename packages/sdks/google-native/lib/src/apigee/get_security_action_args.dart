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
  GetSecurityActionArgs({
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> securityActionId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      securityActionId = pulumi.Input.asInput<String>(securityActionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'securityActionId': securityActionId,
    };
  }

  factory GetSecurityActionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityActionArgs(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      securityActionId: pulumi.Output.create<String>(map['securityActionId'] as String),
    );
  }
}

