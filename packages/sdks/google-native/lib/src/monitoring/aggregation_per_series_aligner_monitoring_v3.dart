/// An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.
enum AggregationPerSeriesAlignerMonitoringV3 {
  alignNone("ALIGN_NONE"),
  alignDelta("ALIGN_DELTA"),
  alignRate("ALIGN_RATE"),
  alignInterpolate("ALIGN_INTERPOLATE"),
  alignNextOlder("ALIGN_NEXT_OLDER"),
  alignMin("ALIGN_MIN"),
  alignMax("ALIGN_MAX"),
  alignMean("ALIGN_MEAN"),
  alignCount("ALIGN_COUNT"),
  alignSum("ALIGN_SUM"),
  alignStddev("ALIGN_STDDEV"),
  alignCountTrue("ALIGN_COUNT_TRUE"),
  alignCountFalse("ALIGN_COUNT_FALSE"),
  alignFractionTrue("ALIGN_FRACTION_TRUE"),
  alignPercentile99("ALIGN_PERCENTILE_99"),
  alignPercentile95("ALIGN_PERCENTILE_95"),
  alignPercentile50("ALIGN_PERCENTILE_50"),
  alignPercentile05("ALIGN_PERCENTILE_05"),
  alignPercentChange("ALIGN_PERCENT_CHANGE");

  const AggregationPerSeriesAlignerMonitoringV3(this.wireValue);
  final String wireValue;

  static AggregationPerSeriesAlignerMonitoringV3 fromValue(String value) {
    for (final item in AggregationPerSeriesAlignerMonitoringV3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AggregationPerSeriesAlignerMonitoringV3 value: $value');
  }
}
