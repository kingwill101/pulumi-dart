// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_billboard_unit_series_override.dart';

class OneDashboardPageWidgetBillboardUnit {
  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final pulumi.Input<List<OneDashboardPageWidgetBillboardUnitSeriesOverride>>? seriesOverrides;
  /// (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  final pulumi.Input<String>? unit;

  /// Creates a new [OneDashboardPageWidgetBillboardUnit].
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  /// [unit] (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  OneDashboardPageWidgetBillboardUnit({
    this.seriesOverrides,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seriesOverrides': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBillboardUnitSeriesOverride>, List<Map<String, dynamic>>>(seriesOverrides, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBillboardUnitSeriesOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unit': ?unit,
    };
  }

  factory OneDashboardPageWidgetBillboardUnit.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboardUnit(
      seriesOverrides: map['seriesOverrides'] == null ? null : (pulumi.Input.decodeList<OneDashboardPageWidgetBillboardUnitSeriesOverride>(map['seriesOverrides']!, (value) => OneDashboardPageWidgetBillboardUnitSeriesOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
    );
  }
}

