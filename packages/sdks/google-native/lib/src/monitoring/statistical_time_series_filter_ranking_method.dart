import 'package:pulumi/pulumi.dart' as pulumi;

/// rankingMethod is applied to a set of time series, and then the produced value for each individual time series is used to compare a given time series to others. These are methods that cannot be applied stream-by-stream, but rather require the full context of a request to evaluate time series.
enum StatisticalTimeSeriesFilterRankingMethod implements pulumi.PulumiEnum<String> {
  methodUnspecified("METHOD_UNSPECIFIED"),
  methodClusterOutlier("METHOD_CLUSTER_OUTLIER");

  const StatisticalTimeSeriesFilterRankingMethod(this.wireValue);
  @override
  final String wireValue;

  static StatisticalTimeSeriesFilterRankingMethod fromValue(String value) {
    for (final item in StatisticalTimeSeriesFilterRankingMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatisticalTimeSeriesFilterRankingMethod value: $value');
  }
}
