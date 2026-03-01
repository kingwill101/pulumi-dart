/// Required. Indicates the visualization type for the PieChart.
enum PieChartChartType {
  pieChartTypeUnspecified("PIE_CHART_TYPE_UNSPECIFIED"),
  pie("PIE"),
  donut("DONUT");

  const PieChartChartType(this.value);
  final String value;

  static PieChartChartType fromValue(String value) {
    for (final item in PieChartChartType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PieChartChartType value: $value');
  }
}

