// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_get_hive_table_iam_policy_get_hive_table_iam_policy_args_doc}
/// Arguments for getHiveTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_biglake_get_hive_table_iam_policy_get_hive_table_iam_policy_args_doc}
class GetHiveTableIamPolicyArgs {
  /// The Hive catalog where the table is located. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> catalog;
  /// The Hive database where the table is located. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> database;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetHiveTableIamPolicyArgs].
  /// [catalog] The Hive catalog where the table is located. Used to find the parent resource to bind the IAM policy to
  /// [database] The Hive database where the table is located. Used to find the parent resource to bind the IAM policy to
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  const GetHiveTableIamPolicyArgs({
    required this.catalog,
    required this.database,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': catalog,
      'database': database,
      'name': name,
      'project': ?project,
    };
  }

  factory GetHiveTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetHiveTableIamPolicyArgs(
      catalog: pulumi.Input.fromValue(map['catalog'] as String),
      database: pulumi.Input.fromValue(map['database'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
