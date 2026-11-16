// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionContentPolicyLoggingConfigLogToBigQuery {
  /// The dataset ID of the BigQuery table to log to.
  final pulumi.Input<String> datasetId;
  /// The project ID of the BigQuery table to log to.
  final pulumi.Input<String> projectId;
  /// The table ID of the BigQuery table to log to.
  final pulumi.Input<String> tableId;

  /// Creates a new [PreventionContentPolicyLoggingConfigLogToBigQuery].
  /// [datasetId] The dataset ID of the BigQuery table to log to.
  /// [projectId] The project ID of the BigQuery table to log to.
  /// [tableId] The table ID of the BigQuery table to log to.
  const PreventionContentPolicyLoggingConfigLogToBigQuery({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'tableId': tableId,
    };
  }

  factory PreventionContentPolicyLoggingConfigLogToBigQuery.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyLoggingConfigLogToBigQuery(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
