// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_studio_studio_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudio {
  /// Optional. The references to the studio datasources.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference>?>? studioReferences;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudio].
  /// [studioReferences] Optional. The references to the studio datasources.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudio({
    this.studioReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'studioReferences': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference>, List<Map<String, dynamic>>>(studioReferences, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudio.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudio(
      studioReferences: (() { final guardedValue = map['studioReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudioStudioReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
