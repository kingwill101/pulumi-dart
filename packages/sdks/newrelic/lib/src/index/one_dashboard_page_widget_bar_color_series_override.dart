// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetBarColorSeriesOverride {
  /// (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  final pulumi.Input<String>? color;
  /// Series name
  final pulumi.Input<String>? seriesName;

  /// Creates a new [OneDashboardPageWidgetBarColorSeriesOverride].
  /// [color] (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  /// [seriesName] Series name
  OneDashboardPageWidgetBarColorSeriesOverride({
    this.color,
    this.seriesName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'seriesName': ?seriesName,
    };
  }

  factory OneDashboardPageWidgetBarColorSeriesOverride.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBarColorSeriesOverride(
      color: map['color'] == null ? null : (map['color']! as String).input(),
      seriesName: map['seriesName'] == null ? null : (map['seriesName']! as String).input(),
    );
  }
}

