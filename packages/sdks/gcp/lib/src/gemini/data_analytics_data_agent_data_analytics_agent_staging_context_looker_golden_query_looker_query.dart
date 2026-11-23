// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_looker_golden_query_looker_query_filter.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQuery {
  /// Optional. The short alphanumeric identifier for the query, used for share links and Explore URLs.
  final pulumi.Input<String?>? clientId;
  /// Required. The LookML explore used to generate the query.
  final pulumi.Input<String> explore;
  /// Optional. The fields to retrieve from the explore.
  final pulumi.Input<List<String>?>? fields;
  /// Optional. The filters to apply to the explore.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQueryFilter>?>? filters;
  /// Optional. Limit in the query.
  final pulumi.Input<String?>? limit;
  /// Required. The LookML model used to generate the query.
  final pulumi.Input<String> model;
  /// Optional. The primary identifier for the query resource in Looker.
  final pulumi.Input<String?>? queryId;
  /// Optional. The sorts to apply to the explore.
  final pulumi.Input<List<String>?>? sorts;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQuery].
  /// [clientId] Optional. The short alphanumeric identifier for the query, used for share links and Explore URLs.
  /// [explore] Required. The LookML explore used to generate the query.
  /// [fields] Optional. The fields to retrieve from the explore.
  /// [filters] Optional. The filters to apply to the explore.
  /// [limit] Optional. Limit in the query.
  /// [model] Required. The LookML model used to generate the query.
  /// [queryId] Optional. The primary identifier for the query resource in Looker.
  /// [sorts] Optional. The sorts to apply to the explore.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQuery({
    this.clientId,
    required this.explore,
    this.fields,
    this.filters,
    this.limit,
    required this.model,
    this.queryId,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'explore': explore,
      'fields': ?fields,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQueryFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQueryFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limit': ?limit,
      'model': model,
      'queryId': ?queryId,
      'sorts': ?sorts,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQuery.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQuery(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      explore: pulumi.Input.fromValue(map['explore'] as String),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQueryFilter>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQueryFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      model: pulumi.Input.fromValue(map['model'] as String),
      queryId: (() { final guardedValue = map['queryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
