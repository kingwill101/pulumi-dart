// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_studio_studio_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudio {
  /// Optional. The references to the studio datasources.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference>?>? studioReferences;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudio].
  /// [studioReferences] Optional. The references to the studio datasources.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudio({
    this.studioReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'studioReferences': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference>, List<Map<String, dynamic>>>(studioReferences, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudio.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudio(
      studioReferences: (() { final guardedValue = map['studioReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudioStudioReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
