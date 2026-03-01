/// The comparison to apply between the time series (indicated by filter and aggregation) and the threshold (indicated by threshold_value). The comparison is applied on each time series, with the time series on the left-hand side and the threshold on the right-hand side.Only COMPARISON_LT and COMPARISON_GT are supported currently.
enum MetricThresholdComparison {
  comparisonUnspecified("COMPARISON_UNSPECIFIED"),
  comparisonGt("COMPARISON_GT"),
  comparisonGe("COMPARISON_GE"),
  comparisonLt("COMPARISON_LT"),
  comparisonLe("COMPARISON_LE"),
  comparisonEq("COMPARISON_EQ"),
  comparisonNe("COMPARISON_NE");

  const MetricThresholdComparison(this.value);
  final String value;

  static MetricThresholdComparison fromValue(String value) {
    for (final item in MetricThresholdComparison.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricThresholdComparison value: $value');
  }
}

