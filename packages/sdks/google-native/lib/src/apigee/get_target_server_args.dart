// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_target_server_args_doc}
/// Arguments for getTargetServer.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_target_server_args_doc}
class GetTargetServerArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> targetserverId;

  /// Creates a new [GetTargetServerArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [targetserverId] Required.
  GetTargetServerArgs({
    required this.environmentId,
    required this.organizationId,
    required this.targetserverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'targetserverId': targetserverId,
    };
  }

  factory GetTargetServerArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetServerArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      targetserverId: pulumi.Input.fromValue(map['targetserverId'] as String),
    );
  }
}
