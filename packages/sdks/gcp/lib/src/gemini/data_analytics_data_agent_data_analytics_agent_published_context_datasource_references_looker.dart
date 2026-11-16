// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_looker_explore_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLooker {
  /// Required. References to Looker explores.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference>> exploreReferences;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLooker].
  /// [exploreReferences] Required. References to Looker explores.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLooker({
    required this.exploreReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exploreReferences': pulumi.Input.mapInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference>, List<Map<String, dynamic>>>(exploreReferences, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLooker.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLooker(
      exploreReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference>(map['exploreReferences']!, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLookerExploreReference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
