// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a ranking-based time series filter. Each input time series is ranked with an aligner. The filter will allow up to num_time_series time series to pass through it, selecting them based on the relative ranking.For example, if ranking_method is METHOD_MEAN,direction is BOTTOM, and num_time_series is 3, then the 3 times series with the lowest mean values will pass through the filter.
class PickTimeSeriesFilterResponse {
  /// How to use the ranking to select time series that pass through the filter.
  final pulumi.Input<String> direction;
  /// How many time series to allow to pass through the filter.
  final pulumi.Input<int> numTimeSeries;
  /// ranking_method is applied to each time series independently to produce the value which will be used to compare the time series to other time series.
  final pulumi.Input<String> rankingMethod;

  /// Creates a new [PickTimeSeriesFilterResponse].
  /// [direction] How to use the ranking to select time series that pass through the filter.
  /// [numTimeSeries] How many time series to allow to pass through the filter.
  /// [rankingMethod] ranking_method is applied to each time series independently to produce the value which will be used to compare the time series to other time series.
  PickTimeSeriesFilterResponse({
    required this.direction,
    required this.numTimeSeries,
    required this.rankingMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'numTimeSeries': numTimeSeries,
      'rankingMethod': rankingMethod,
    };
  }

  factory PickTimeSeriesFilterResponse.fromMap(Map<String, dynamic> map) {
    return PickTimeSeriesFilterResponse(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      numTimeSeries: pulumi.Input.fromValue(map['numTimeSeries'] as int),
      rankingMethod: pulumi.Input.fromValue(map['rankingMethod'] as String),
    );
  }
}

