// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_json_color_series_override.dart';

class OneDashboardPageWidgetJsonColor {
  /// (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  final pulumi.Input<String>? color;

  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final pulumi.Input<List<OneDashboardPageWidgetJsonColorSeriesOverride>>?
  seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetJsonColor].
  /// [color] (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  OneDashboardPageWidgetJsonColor({this.color, this.seriesOverrides});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'seriesOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<OneDashboardPageWidgetJsonColorSeriesOverride>,
            List<Map<String, dynamic>>
          >(
            seriesOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  OneDashboardPageWidgetJsonColorSeriesOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory OneDashboardPageWidgetJsonColor.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetJsonColor(
      color: (() {
        final guardedValue = map['color'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      seriesOverrides: (() {
        final guardedValue = map['seriesOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<OneDashboardPageWidgetJsonColorSeriesOverride>(
            guardedValue,
            (value) => OneDashboardPageWidgetJsonColorSeriesOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
