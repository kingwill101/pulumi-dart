// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_get_table_iam_policy_get_table_iam_policy_args_doc}
/// Arguments for getTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquery_get_table_iam_policy_get_table_iam_policy_args_doc}
class GetTableIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> datasetId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> tableId;

  /// Creates a new [GetTableIamPolicyArgs].
  /// [datasetId] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [tableId] Used to find the parent resource to bind the IAM policy to
  const GetTableIamPolicyArgs({
    required this.datasetId,
    this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': ?project,
      'tableId': tableId,
    };
  }

  factory GetTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyArgs(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
