// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtable_get_table_iam_policy_get_table_iam_policy_args_doc}
/// Arguments for getTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigtable_get_table_iam_policy_get_table_iam_policy_args_doc}
class GetTableIamPolicyArgs {
  final pulumi.Input<String> instanceName;
  final pulumi.Input<String>? project;
  /// The name or relative resource id of the table to manage IAM policies for.
  final pulumi.Input<String> table;

  /// Creates a new [GetTableIamPolicyArgs].
  /// [instanceName] Required.
  /// [project] Optional.
  /// [table] The name or relative resource id of the table to manage IAM policies for.
  GetTableIamPolicyArgs({
    required this.instanceName,
    this.project,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'project': ?project,
      'table': table,
    };
  }

  factory GetTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyArgs(
      instanceName: (map['instanceName'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      table: (map['table'] as String).input(),
    );
  }
}

