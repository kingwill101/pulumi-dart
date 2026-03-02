// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'statistical_time_series_filter_ranking_method.dart';

/// A filter that ranks streams based on their statistical relation to other streams in a request. Note: This field is deprecated and completely ignored by the API.
class StatisticalTimeSeriesFilter {
  /// How many time series to output.
  final pulumi.Input<int>? numTimeSeries;
  /// rankingMethod is applied to a set of time series, and then the produced value for each individual time series is used to compare a given time series to others. These are methods that cannot be applied stream-by-stream, but rather require the full context of a request to evaluate time series.
  final pulumi.Input<StatisticalTimeSeriesFilterRankingMethod>? rankingMethod;

  /// Creates a new [StatisticalTimeSeriesFilter].
  /// [numTimeSeries] How many time series to output.
  /// [rankingMethod] rankingMethod is applied to a set of time series, and then the produced value for each individual time series is used to compare a given time series to others. These are methods that cannot be applied stream-by-stream, but rather require the full context of a request to evaluate time series.
  StatisticalTimeSeriesFilter({
    this.numTimeSeries,
    this.rankingMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numTimeSeries': ?numTimeSeries,
      'rankingMethod': ?pulumi.Input.mapOptionalInputValue<StatisticalTimeSeriesFilterRankingMethod, String>(rankingMethod, (value) => value.value),
    };
  }

  factory StatisticalTimeSeriesFilter.fromMap(Map<String, dynamic> map) {
    return StatisticalTimeSeriesFilter(
      numTimeSeries: map['numTimeSeries'] == null ? null : (map['numTimeSeries'] as int).input(),
      rankingMethod: map['rankingMethod'] == null ? null : (StatisticalTimeSeriesFilterRankingMethod.fromValue(map['rankingMethod'] as String)).input(),
    );
  }
}

