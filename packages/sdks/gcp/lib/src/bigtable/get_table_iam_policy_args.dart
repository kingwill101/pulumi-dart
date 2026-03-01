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
    required pulumi.Output<String> instanceName,
    pulumi.Output<String>? project,
    required pulumi.Output<String> table,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      project = pulumi.Input.asOptionalInput<String>(project),
      table = pulumi.Input.asInput<String>(table);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'project': ?project,
      'table': table,
    };
  }

  factory GetTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyArgs(
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      table: pulumi.Output.create<String>(map['table'] as String),
    );
  }
}

