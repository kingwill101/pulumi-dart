/// How this data should be plotted on the chart.
enum DataSetPlotType {
  plotTypeUnspecified("PLOT_TYPE_UNSPECIFIED"),
  line("LINE"),
  stackedArea("STACKED_AREA"),
  stackedBar("STACKED_BAR"),
  heatmap("HEATMAP");

  const DataSetPlotType(this.wireValue);
  final String wireValue;

  static DataSetPlotType fromValue(String value) {
    for (final item in DataSetPlotType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSetPlotType value: $value');
  }
}

