// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_histogram_null_value_series_override.dart';

class OneDashboardPageWidgetHistogramNullValue {
  /// Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  final pulumi.Input<String>? nullValue;

  /// (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  final pulumi.Input<
    List<OneDashboardPageWidgetHistogramNullValueSeriesOverride>
  >?
  seriesOverrides;

  /// Creates a new [OneDashboardPageWidgetHistogramNullValue].
  /// [nullValue] Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  /// [seriesOverrides] (Optional) A Nested block which will take two string attributes `color` and `series_name`. This nested block is used to customize colors of individual.
  OneDashboardPageWidgetHistogramNullValue({
    this.nullValue,
    this.seriesOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nullValue': ?nullValue,
      'seriesOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<OneDashboardPageWidgetHistogramNullValueSeriesOverride>,
            List<Map<String, dynamic>>
          >(
            seriesOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  OneDashboardPageWidgetHistogramNullValueSeriesOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory OneDashboardPageWidgetHistogramNullValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetHistogramNullValue(
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
            OneDashboardPageWidgetHistogramNullValueSeriesOverride
          >(
            guardedValue,
            (value) =>
                OneDashboardPageWidgetHistogramNullValueSeriesOverride.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
