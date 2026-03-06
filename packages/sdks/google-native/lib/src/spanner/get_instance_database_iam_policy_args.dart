// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_get_instance_database_iam_policy_args_doc}
/// Arguments for getInstanceDatabaseIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_get_instance_database_iam_policy_args_doc}
class GetInstanceDatabaseIamPolicyArgs {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceDatabaseIamPolicyArgs].
  /// [databaseId] Required.
  /// [instanceId] Required.
  /// [project] Optional.
  const GetInstanceDatabaseIamPolicyArgs({
    required this.databaseId,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetInstanceDatabaseIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceDatabaseIamPolicyArgs(
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

