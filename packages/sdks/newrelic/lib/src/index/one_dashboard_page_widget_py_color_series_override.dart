// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetPyColorSeriesOverride {
  /// (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  final pulumi.Input<String>? color;

  /// Series name
  final pulumi.Input<String>? seriesName;

  /// Creates a new [OneDashboardPageWidgetPyColorSeriesOverride].
  /// [color] (Optional) Choose a color to customize the color of your charts per series in area, bar, line, pie, and stacked bar charts. Accepted values are RGB, HEX, or HSL code.
  /// [seriesName] Series name
  OneDashboardPageWidgetPyColorSeriesOverride({this.color, this.seriesName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'color': ?color, 'seriesName': ?seriesName};
  }

  factory OneDashboardPageWidgetPyColorSeriesOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetPyColorSeriesOverride(
      color: (() {
        final guardedValue = map['color'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      seriesName: (() {
        final guardedValue = map['seriesName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
