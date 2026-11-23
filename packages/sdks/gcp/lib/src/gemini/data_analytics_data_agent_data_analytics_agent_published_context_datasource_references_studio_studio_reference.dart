// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference {
  /// Required. The ID of the datasource.
  final pulumi.Input<String> datasourceId;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference].
  /// [datasourceId] Required. The ID of the datasource.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference({
    required this.datasourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceId': datasourceId,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference(
      datasourceId: pulumi.Input.fromValue(map['datasourceId'] as String),
    );
  }
}
