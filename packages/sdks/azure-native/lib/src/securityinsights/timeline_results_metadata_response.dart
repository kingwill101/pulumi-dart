// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'timeline_aggregation_response.dart';
import 'timeline_error_response.dart';

/// Expansion result metadata.
class TimelineResultsMetadataResponse {
  /// timeline aggregation per kind
  final pulumi.Input<List<TimelineAggregationResponse>> aggregations;
  /// information about the failure queries
  final pulumi.Input<List<TimelineErrorResponse>>? errors;
  /// the total items found for the timeline request
  final pulumi.Input<int> totalCount;

  /// Creates a new [TimelineResultsMetadataResponse].
  /// [aggregations] timeline aggregation per kind
  /// [errors] information about the failure queries
  /// [totalCount] the total items found for the timeline request
  TimelineResultsMetadataResponse({
    required this.aggregations,
    this.errors,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregations': pulumi.Input.mapInputValue<List<TimelineAggregationResponse>, List<Map<String, dynamic>>>(aggregations, (value) => pulumi.Input.encodeList<TimelineAggregationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': ?pulumi.Input.mapOptionalInputValue<List<TimelineErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<TimelineErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalCount': totalCount,
    };
  }

  factory TimelineResultsMetadataResponse.fromMap(Map<String, dynamic> map) {
    return TimelineResultsMetadataResponse(
      aggregations: pulumi.Input.fromValue(pulumi.Input.decodeList<TimelineAggregationResponse>(map['aggregations']!, (value) => TimelineAggregationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TimelineErrorResponse>(guardedValue, (value) => TimelineErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      totalCount: pulumi.Input.fromValue(map['totalCount'] as int),
    );
  }
}

