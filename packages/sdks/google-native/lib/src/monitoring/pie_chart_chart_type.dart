import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Indicates the visualization type for the PieChart.
enum PieChartChartType implements pulumi.PulumiEnum<String> {
  pieChartTypeUnspecified("PIE_CHART_TYPE_UNSPECIFIED"),
  pie("PIE"),
  donut("DONUT");

  const PieChartChartType(this.wireValue);
  @override
  final String wireValue;

  static PieChartChartType fromValue(String value) {
    for (final item in PieChartChartType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PieChartChartType value: $value');
  }
}
