// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_heatmap_color_series_override.dart';

class OneDashboardPageWidgetHeatmapColor {
  /// (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  final pulumi.Input<String>? color;
  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final pulumi.Input<List<OneDashboardPageWidgetHeatmapColorSeriesOverride>>? seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetHeatmapColor].
  /// [color] (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  OneDashboardPageWidgetHeatmapColor({
    this.color,
    this.seriesOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'seriesOverrides': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetHeatmapColorSeriesOverride>, List<Map<String, dynamic>>>(seriesOverrides, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHeatmapColorSeriesOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OneDashboardPageWidgetHeatmapColor.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetHeatmapColor(
      color: map['color'] == null ? null : (map['color']! as String).input(),
      seriesOverrides: map['seriesOverrides'] == null ? null : (pulumi.Input.decodeList<OneDashboardPageWidgetHeatmapColorSeriesOverride>(map['seriesOverrides']!, (value) => OneDashboardPageWidgetHeatmapColorSeriesOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

