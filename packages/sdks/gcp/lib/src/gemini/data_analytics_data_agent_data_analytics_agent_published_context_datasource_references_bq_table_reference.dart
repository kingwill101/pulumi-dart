// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference {
  /// The dataset that the table belongs to.
  final pulumi.Input<String> datasetId;
  /// The project that the table belongs to.
  final pulumi.Input<String> projectId;
  /// The table ID.
  final pulumi.Input<String> tableId;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference].
  /// [datasetId] The dataset that the table belongs to.
  /// [projectId] The project that the table belongs to.
  /// [tableId] The table ID.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference({
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

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
