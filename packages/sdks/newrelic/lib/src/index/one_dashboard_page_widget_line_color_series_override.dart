// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetLineColorSeriesOverride {
  /// (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  final String? color;
  /// Series name
  final String? seriesName;

  /// Creates a new [OneDashboardPageWidgetLineColorSeriesOverride].
  /// [color] (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  /// [seriesName] Series name
  OneDashboardPageWidgetLineColorSeriesOverride({
    this.color,
    this.seriesName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'seriesName': ?seriesName,
    };
  }

  factory OneDashboardPageWidgetLineColorSeriesOverride.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetLineColorSeriesOverride(
      color: map['color'] == null ? null : map['color'] as String,
      seriesName: map['seriesName'] == null ? null : map['seriesName'] as String,
    );
  }
}

