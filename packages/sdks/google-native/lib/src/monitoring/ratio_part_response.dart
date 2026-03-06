// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregation_response.dart';

/// Describes a query to build the numerator or denominator of a TimeSeriesFilterRatio.
class RatioPartResponse {
  /// By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  final pulumi.Input<AggregationResponse> aggregation;
  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  final pulumi.Input<String> filter;

  /// Creates a new [RatioPartResponse].
  /// [aggregation] By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  /// [filter] The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  const RatioPartResponse({
    required this.aggregation,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': pulumi.Input.mapInputValue<AggregationResponse, Map<String, dynamic>>(aggregation, (value) => value.toMap()),
      'filter': filter,
    };
  }

  factory RatioPartResponse.fromMap(Map<String, dynamic> map) {
    return RatioPartResponse(
      aggregation: pulumi.Input.fromValue(AggregationResponse.fromMap((map['aggregation']! as Map).cast<String, dynamic>())),
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}

