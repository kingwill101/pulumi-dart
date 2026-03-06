// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregation_response.dart';
import 'pick_time_series_filter_response.dart';
import 'ratio_part_response.dart';
import 'statistical_time_series_filter_response.dart';

/// A pair of time series filters that define a ratio computation. The output time series is the pair-wise division of each aligned element from the numerator and denominator time series.
class TimeSeriesFilterRatioResponse {
  /// The denominator of the ratio.
  final pulumi.Input<RatioPartResponse> denominator;
  /// The numerator of the ratio.
  final pulumi.Input<RatioPartResponse> numerator;
  /// Ranking based time series filter.
  final pulumi.Input<PickTimeSeriesFilterResponse> pickTimeSeriesFilter;
  /// Apply a second aggregation after the ratio is computed.
  final pulumi.Input<AggregationResponse> secondaryAggregation;
  /// Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  final pulumi.Input<StatisticalTimeSeriesFilterResponse> statisticalTimeSeriesFilter;

  /// Creates a new [TimeSeriesFilterRatioResponse].
  /// [denominator] The denominator of the ratio.
  /// [numerator] The numerator of the ratio.
  /// [pickTimeSeriesFilter] Ranking based time series filter.
  /// [secondaryAggregation] Apply a second aggregation after the ratio is computed.
  /// [statisticalTimeSeriesFilter] Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  const TimeSeriesFilterRatioResponse({
    required this.denominator,
    required this.numerator,
    required this.pickTimeSeriesFilter,
    required this.secondaryAggregation,
    required this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denominator': pulumi.Input.mapInputValue<RatioPartResponse, Map<String, dynamic>>(denominator, (value) => value.toMap()),
      'numerator': pulumi.Input.mapInputValue<RatioPartResponse, Map<String, dynamic>>(numerator, (value) => value.toMap()),
      'pickTimeSeriesFilter': pulumi.Input.mapInputValue<PickTimeSeriesFilterResponse, Map<String, dynamic>>(pickTimeSeriesFilter, (value) => value.toMap()),
      'secondaryAggregation': pulumi.Input.mapInputValue<AggregationResponse, Map<String, dynamic>>(secondaryAggregation, (value) => value.toMap()),
      'statisticalTimeSeriesFilter': pulumi.Input.mapInputValue<StatisticalTimeSeriesFilterResponse, Map<String, dynamic>>(statisticalTimeSeriesFilter, (value) => value.toMap()),
    };
  }

  factory TimeSeriesFilterRatioResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilterRatioResponse(
      denominator: pulumi.Input.fromValue(RatioPartResponse.fromMap((map['denominator']! as Map).cast<String, dynamic>())),
      numerator: pulumi.Input.fromValue(RatioPartResponse.fromMap((map['numerator']! as Map).cast<String, dynamic>())),
      pickTimeSeriesFilter: pulumi.Input.fromValue(PickTimeSeriesFilterResponse.fromMap((map['pickTimeSeriesFilter']! as Map).cast<String, dynamic>())),
      secondaryAggregation: pulumi.Input.fromValue(AggregationResponse.fromMap((map['secondaryAggregation']! as Map).cast<String, dynamic>())),
      statisticalTimeSeriesFilter: pulumi.Input.fromValue(StatisticalTimeSeriesFilterResponse.fromMap((map['statisticalTimeSeriesFilter']! as Map).cast<String, dynamic>())),
    );
  }
}

