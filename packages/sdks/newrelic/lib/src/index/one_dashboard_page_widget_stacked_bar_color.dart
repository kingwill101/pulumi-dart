// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_stacked_bar_color_series_override.dart';

class OneDashboardPageWidgetStackedBarColor {
  /// (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  final pulumi.Input<String>? color;

  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final pulumi.Input<List<OneDashboardPageWidgetStackedBarColorSeriesOverride>>?
  seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetStackedBarColor].
  /// [color] (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  OneDashboardPageWidgetStackedBarColor({this.color, this.seriesOverrides});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'seriesOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<OneDashboardPageWidgetStackedBarColorSeriesOverride>,
            List<Map<String, dynamic>>
          >(
            seriesOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  OneDashboardPageWidgetStackedBarColorSeriesOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory OneDashboardPageWidgetStackedBarColor.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetStackedBarColor(
      color: (() {
        final guardedValue = map['color'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      seriesOverrides: (() {
        final guardedValue = map['seriesOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            OneDashboardPageWidgetStackedBarColorSeriesOverride
          >(
            guardedValue,
            (value) =>
                OneDashboardPageWidgetStackedBarColorSeriesOverride.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
