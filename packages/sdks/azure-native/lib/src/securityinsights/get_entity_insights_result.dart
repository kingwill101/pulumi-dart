// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_insight_item_response.dart';
import 'get_insights_results_metadata_response.dart';

/// Result data returned by getEntityInsights.
class GetEntityInsightsResult {
  /// The metadata from the get insights operation results.
  final GetInsightsResultsMetadataResponse? metaData;
  /// The insights result values.
  final List<EntityInsightItemResponse>? value;

  /// Creates a new [GetEntityInsightsResult].
  /// [metaData] The metadata from the get insights operation results.
  /// [value] The insights result values.
  const GetEntityInsightsResult({
    this.metaData,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metaData': ?metaData?.toMap(),
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<EntityInsightItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetEntityInsightsResult.fromMap(Map<String, dynamic> map) {
    return GetEntityInsightsResult(
      metaData: (() { final guardedValue = map['metaData']; if (guardedValue == null) return null; return GetInsightsResultsMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EntityInsightItemResponse>(guardedValue, (value) => EntityInsightItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

