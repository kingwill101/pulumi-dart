/// ranking_method is applied to each time series independently to produce the value which will be used to compare the time series to other time series.
enum PickTimeSeriesFilterRankingMethod {
  methodUnspecified("METHOD_UNSPECIFIED"),
  methodMean("METHOD_MEAN"),
  methodMax("METHOD_MAX"),
  methodMin("METHOD_MIN"),
  methodSum("METHOD_SUM"),
  methodLatest("METHOD_LATEST");

  const PickTimeSeriesFilterRankingMethod(this.wireValue);
  final String wireValue;

  static PickTimeSeriesFilterRankingMethod fromValue(String value) {
    for (final item in PickTimeSeriesFilterRankingMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PickTimeSeriesFilterRankingMethod value: $value');
  }
}

