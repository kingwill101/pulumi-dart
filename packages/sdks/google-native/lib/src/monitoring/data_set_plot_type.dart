import 'package:pulumi/pulumi.dart' as pulumi;

/// How this data should be plotted on the chart.
enum DataSetPlotType implements pulumi.PulumiEnum<String> {
  plotTypeUnspecified("PLOT_TYPE_UNSPECIFIED"),
  line("LINE"),
  stackedArea("STACKED_AREA"),
  stackedBar("STACKED_BAR"),
  heatmap("HEATMAP");

  const DataSetPlotType(this.wireValue);
  @override
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
