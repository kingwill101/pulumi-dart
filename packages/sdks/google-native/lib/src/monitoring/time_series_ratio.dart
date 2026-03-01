// ignore_for_file: unused_element, unnecessary_cast


/// A TimeSeriesRatio specifies two TimeSeries to use for computing the good_service / total_service ratio. The specified TimeSeries must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE. The TimeSeriesRatio must specify exactly two of good, bad, and total, and the relationship good_service + bad_service = total_service will be assumed.
class TimeSeriesRatio {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying bad service, either demanded service that was not provided or demanded service that was of inadequate quality. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String? badServiceFilter;
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying good service provided. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String? goodServiceFilter;
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying total demanded service. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String? totalServiceFilter;

  /// Creates a new [TimeSeriesRatio].
  /// [badServiceFilter] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying bad service, either demanded service that was not provided or demanded service that was of inadequate quality. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  /// [goodServiceFilter] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying good service provided. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  /// [totalServiceFilter] A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries quantifying total demanded service. Must have ValueType = DOUBLE or ValueType = INT64 and must have MetricKind = DELTA or MetricKind = CUMULATIVE.
  TimeSeriesRatio({
    this.badServiceFilter,
    this.goodServiceFilter,
    this.totalServiceFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'badServiceFilter': ?badServiceFilter,
      'goodServiceFilter': ?goodServiceFilter,
      'totalServiceFilter': ?totalServiceFilter,
    };
  }

  factory TimeSeriesRatio.fromMap(Map<String, dynamic> map) {
    return TimeSeriesRatio(
      badServiceFilter: map['badServiceFilter'] == null ? null : map['badServiceFilter'] as String,
      goodServiceFilter: map['goodServiceFilter'] == null ? null : map['goodServiceFilter'] as String,
      totalServiceFilter: map['totalServiceFilter'] == null ? null : map['totalServiceFilter'] as String,
    );
  }
}

