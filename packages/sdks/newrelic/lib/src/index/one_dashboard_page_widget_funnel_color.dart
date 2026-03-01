// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_funnel_color_series_override.dart';

class OneDashboardPageWidgetFunnelColor {
  /// (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  final String? color;
  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final List<OneDashboardPageWidgetFunnelColorSeriesOverride>? seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetFunnelColor].
  /// [color] (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  OneDashboardPageWidgetFunnelColor({
    this.color,
    this.seriesOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'seriesOverrides': ?seriesOverrides == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetFunnelColorSeriesOverride, Map<String, dynamic>>(seriesOverrides!, (value) => value.toMap()),
    };
  }

  factory OneDashboardPageWidgetFunnelColor.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetFunnelColor(
      color: map['color'] == null ? null : map['color'] as String,
      seriesOverrides: map['seriesOverrides'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetFunnelColorSeriesOverride>(map['seriesOverrides'], (value) => OneDashboardPageWidgetFunnelColorSeriesOverride.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

