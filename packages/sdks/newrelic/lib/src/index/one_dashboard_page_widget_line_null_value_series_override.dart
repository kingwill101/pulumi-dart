// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetLineNullValueSeriesOverride {
  /// Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  final String? nullValue;
  /// Series name
  final String? seriesName;

  /// Creates a new [OneDashboardPageWidgetLineNullValueSeriesOverride].
  /// [nullValue] Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  /// [seriesName] Series name
  OneDashboardPageWidgetLineNullValueSeriesOverride({
    this.nullValue,
    this.seriesName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nullValue': ?nullValue,
      'seriesName': ?seriesName,
    };
  }

  factory OneDashboardPageWidgetLineNullValueSeriesOverride.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetLineNullValueSeriesOverride(
      nullValue: map['nullValue'] == null ? null : map['nullValue'] as String,
      seriesName: map['seriesName'] == null ? null : map['seriesName'] as String,
    );
  }
}

