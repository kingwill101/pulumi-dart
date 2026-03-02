// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetLogTableUnitSeriesOverride {
  /// Series name
  final pulumi.Input<String>? seriesName;
  /// (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  final pulumi.Input<String>? unit;

  /// Creates a new [OneDashboardPageWidgetLogTableUnitSeriesOverride].
  /// [seriesName] Series name
  /// [unit] (Optional) Choose a unit to customize the unit on your Y axis and in each of your series.
  OneDashboardPageWidgetLogTableUnitSeriesOverride({
    this.seriesName,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'seriesName': ?seriesName,
      'unit': ?unit,
    };
  }

  factory OneDashboardPageWidgetLogTableUnitSeriesOverride.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetLogTableUnitSeriesOverride(
      seriesName: map['seriesName'] == null ? null : (map['seriesName']! as String).input(),
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
    );
  }
}

