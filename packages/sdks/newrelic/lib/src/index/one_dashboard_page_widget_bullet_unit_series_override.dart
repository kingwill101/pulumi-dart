// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetBulletUnitSeriesOverride {
  /// Series name
  final pulumi.Input<String>? seriesName;

  /// (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  final pulumi.Input<String>? unit;

  /// Creates a new [OneDashboardPageWidgetBulletUnitSeriesOverride].
  /// [seriesName] Series name
  /// [unit] (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  OneDashboardPageWidgetBulletUnitSeriesOverride({this.seriesName, this.unit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'seriesName': ?seriesName, 'unit': ?unit};
  }

  factory OneDashboardPageWidgetBulletUnitSeriesOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetBulletUnitSeriesOverride(
      seriesName: (() {
        final guardedValue = map['seriesName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      unit: (() {
        final guardedValue = map['unit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
