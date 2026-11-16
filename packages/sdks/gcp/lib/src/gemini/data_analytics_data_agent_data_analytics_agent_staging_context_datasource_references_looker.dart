// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_looker_explore_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLooker {
  /// Required. References to Looker explores.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference>> exploreReferences;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLooker].
  /// [exploreReferences] Required. References to Looker explores.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLooker({
    required this.exploreReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exploreReferences': pulumi.Input.mapInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference>, List<Map<String, dynamic>>>(exploreReferences, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLooker.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLooker(
      exploreReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference>(map['exploreReferences']!, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLookerExploreReference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
