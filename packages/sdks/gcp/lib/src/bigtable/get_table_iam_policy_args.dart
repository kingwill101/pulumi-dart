// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtable_get_table_iam_policy_get_table_iam_policy_args_doc}
/// Arguments for getTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigtable_get_table_iam_policy_get_table_iam_policy_args_doc}
class GetTableIamPolicyArgs {
  final pulumi.Input<String> instanceName;
  /// The project in which the table belongs. If it
  /// is not provided, Terraform will use the provider default.
  final pulumi.Input<String>? project;
  /// The name or relative resource id of the table to manage IAM policies for.
  final pulumi.Input<String> table;

  /// Creates a new [GetTableIamPolicyArgs].
  /// [instanceName] Required.
  /// [project] The project in which the table belongs. If it
  /// [table] The name or relative resource id of the table to manage IAM policies for.
  const GetTableIamPolicyArgs({
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
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
