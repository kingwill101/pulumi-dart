/// Optional. The aggregate metric to evaluate.
enum GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic {
  statisticUndefined("STATISTIC_UNDEFINED"),
  mean("MEAN"),
  min("MIN"),
  max("MAX");

  const GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic(this.wireValue);
  final String wireValue;

  static GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic fromValue(String value) {
    for (final item in GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectationStatistic value: $value');
  }
}

