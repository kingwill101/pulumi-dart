// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A filter that ranks streams based on their statistical relation to other streams in a request. Note: This field is deprecated and completely ignored by the API.
class StatisticalTimeSeriesFilterResponse {
  /// How many time series to output.
  final pulumi.Input<int> numTimeSeries;
  /// rankingMethod is applied to a set of time series, and then the produced value for each individual time series is used to compare a given time series to others. These are methods that cannot be applied stream-by-stream, but rather require the full context of a request to evaluate time series.
  final pulumi.Input<String> rankingMethod;

  /// Creates a new [StatisticalTimeSeriesFilterResponse].
  /// [numTimeSeries] How many time series to output.
  /// [rankingMethod] rankingMethod is applied to a set of time series, and then the produced value for each individual time series is used to compare a given time series to others. These are methods that cannot be applied stream-by-stream, but rather require the full context of a request to evaluate time series.
  const StatisticalTimeSeriesFilterResponse({
    required this.numTimeSeries,
    required this.rankingMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numTimeSeries': numTimeSeries,
      'rankingMethod': rankingMethod,
    };
  }

  factory StatisticalTimeSeriesFilterResponse.fromMap(Map<String, dynamic> map) {
    return StatisticalTimeSeriesFilterResponse(
      numTimeSeries: pulumi.Input.fromValue(map['numTimeSeries'] as int),
      rankingMethod: pulumi.Input.fromValue(map['rankingMethod'] as String),
    );
  }
}
