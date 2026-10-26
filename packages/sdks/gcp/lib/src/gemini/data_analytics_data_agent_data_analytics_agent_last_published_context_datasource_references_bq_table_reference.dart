// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference {
  /// The dataset that the table belongs to.
  final pulumi.Input<String?>? datasetId;
  /// The project that the table belongs to.
  final pulumi.Input<String?>? projectId;
  /// The table ID.
  final pulumi.Input<String?>? tableId;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference].
  /// [datasetId] The dataset that the table belongs to.
  /// [projectId] The project that the table belongs to.
  /// [tableId] The table ID.
  const DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'projectId': ?projectId,
      'tableId': ?tableId,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference(
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: (() { final guardedValue = map['tableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
