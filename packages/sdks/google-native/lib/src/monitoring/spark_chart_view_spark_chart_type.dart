import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of sparkchart to show in this chartView.
enum SparkChartViewSparkChartType implements pulumi.PulumiEnum<String> {
  sparkChartTypeUnspecified("SPARK_CHART_TYPE_UNSPECIFIED"),
  sparkLine("SPARK_LINE"),
  sparkBar("SPARK_BAR");

  const SparkChartViewSparkChartType(this.wireValue);
  @override
  final String wireValue;

  static SparkChartViewSparkChartType fromValue(String value) {
    for (final item in SparkChartViewSparkChartType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkChartViewSparkChartType value: $value');
  }
}
