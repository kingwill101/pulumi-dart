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
    required this.instanceId,
    this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': ?project,
      'tableId': tableId,
    };
  }

  factory GetInstanceTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTableIamPolicyArgs(
      instanceId: (map['instanceId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

