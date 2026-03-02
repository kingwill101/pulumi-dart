// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_histogram_unit_series_override.dart';

class OneDashboardPageWidgetHistogramUnit {
  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final pulumi.Input<List<OneDashboardPageWidgetHistogramUnitSeriesOverride>>? seriesOverrides;
  /// (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  final pulumi.Input<String>? unit;

  /// Creates a new [OneDashboardPageWidgetHistogramUnit].
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  /// [unit] (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  OneDashboardPageWidgetHistogramUnit({
    this.seriesOverrides,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seriesOverrides': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetHistogramUnitSeriesOverride>, List<Map<String, dynamic>>>(seriesOverrides, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHistogramUnitSeriesOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unit': ?unit,
    };
  }

  factory OneDashboardPageWidgetHistogramUnit.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetHistogramUnit(
      seriesOverrides: map['seriesOverrides'] == null ? null : (pulumi.Input.decodeList<OneDashboardPageWidgetHistogramUnitSeriesOverride>(map['seriesOverrides']!, (value) => OneDashboardPageWidgetHistogramUnitSeriesOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
    );
  }
}

