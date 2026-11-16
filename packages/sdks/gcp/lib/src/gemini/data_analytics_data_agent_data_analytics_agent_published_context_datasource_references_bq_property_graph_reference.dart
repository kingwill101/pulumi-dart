// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqPropertyGraphReference {
  /// Required. The dataset that the property graph belongs to.
  final pulumi.Input<String> datasetId;
  /// Required. The project that the property graph belongs to.
  final pulumi.Input<String> projectId;
  /// Required. The property graph ID.
  final pulumi.Input<String> propertyGraphId;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqPropertyGraphReference].
  /// [datasetId] Required. The dataset that the property graph belongs to.
  /// [projectId] Required. The project that the property graph belongs to.
  /// [propertyGraphId] Required. The property graph ID.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqPropertyGraphReference({
    required this.datasetId,
    required this.projectId,
    required this.propertyGraphId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'propertyGraphId': propertyGraphId,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqPropertyGraphReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqPropertyGraphReference(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      propertyGraphId: pulumi.Input.fromValue(map['propertyGraphId'] as String),
    );
  }
}
