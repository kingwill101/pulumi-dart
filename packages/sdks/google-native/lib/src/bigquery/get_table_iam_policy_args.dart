// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_v2_get_table_iam_policy_args_doc}
/// Arguments for getTableIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquery_v2_get_table_iam_policy_args_doc}
class GetTableIamPolicyArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tableId;

  /// Creates a new [GetTableIamPolicyArgs].
  /// [datasetId] Required.
  /// [project] Optional.
  /// [tableId] Required.
  GetTableIamPolicyArgs({
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
      datasetId: (map['datasetId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

