// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_funnel_null_value_series_override.dart';

class OneDashboardPageWidgetFunnelNullValue {
  /// Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  final pulumi.Input<String>? nullValue;

  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final pulumi.Input<List<OneDashboardPageWidgetFunnelNullValueSeriesOverride>>?
  seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetFunnelNullValue].
  /// [nullValue] Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  OneDashboardPageWidgetFunnelNullValue({this.nullValue, this.seriesOverrides});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nullValue': ?nullValue,
      'seriesOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<OneDashboardPageWidgetFunnelNullValueSeriesOverride>,
            List<Map<String, dynamic>>
          >(
            seriesOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  OneDashboardPageWidgetFunnelNullValueSeriesOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory OneDashboardPageWidgetFunnelNullValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetFunnelNullValue(
      nullValue: (() {
        final guardedValue = map['nullValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      seriesOverrides: (() {
        final guardedValue = map['seriesOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            OneDashboardPageWidgetFunnelNullValueSeriesOverride
          >(
            guardedValue,
            (value) =>
                OneDashboardPageWidgetFunnelNullValueSeriesOverride.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
