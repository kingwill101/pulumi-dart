// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtableadmin_v2_get_instance_table_iam_policy_args_doc}
/// Arguments for getInstanceTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_get_instance_table_iam_policy_args_doc}
class GetInstanceTableIamPolicyArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tableId;

  /// Creates a new [GetInstanceTableIamPolicyArgs].
  /// [instanceId] Required.
  /// [project] Optional.
  /// [tableId] Required.
  GetInstanceTableIamPolicyArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tableId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tableId = pulumi.Input.asInput<String>(tableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': ?project,
      'tableId': tableId,
    };
  }

  factory GetInstanceTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTableIamPolicyArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tableId: pulumi.Output.create<String>(map['tableId'] as String),
    );
  }
}

