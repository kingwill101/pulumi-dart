// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference {
  /// Required. The ID of the datasource.
  final pulumi.Input<String> datasourceId;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference].
  /// [datasourceId] Required. The ID of the datasource.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference({
    required this.datasourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceId': datasourceId,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference(
      datasourceId: pulumi.Input.fromValue(map['datasourceId'] as String),
    );
  }
}
