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
  GetInstanceDatabaseIamPolicyArgs({
    required pulumi.Output<String> databaseId,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
  }) :
      databaseId = pulumi.Input.asInput<String>(databaseId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': databaseId,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetInstanceDatabaseIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceDatabaseIamPolicyArgs(
      databaseId: pulumi.Output.create<String>(map['databaseId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

