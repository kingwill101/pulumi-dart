// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_billboard_null_value_series_override.dart';

class OneDashboardPageWidgetBillboardNullValue {
  /// Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  final pulumi.Input<String>? nullValue;
  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final pulumi.Input<List<OneDashboardPageWidgetBillboardNullValueSeriesOverride>>? seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetBillboardNullValue].
  /// [nullValue] Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  const OneDashboardPageWidgetBillboardNullValue({
    this.nullValue,
    this.seriesOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nullValue': ?nullValue,
      'seriesOverrides': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBillboardNullValueSeriesOverride>, List<Map<String, dynamic>>>(seriesOverrides, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBillboardNullValueSeriesOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OneDashboardPageWidgetBillboardNullValue.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboardNullValue(
      nullValue: (() { final guardedValue = map['nullValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seriesOverrides: (() { final guardedValue = map['seriesOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetBillboardNullValueSeriesOverride>(guardedValue, (value) => OneDashboardPageWidgetBillboardNullValueSeriesOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

