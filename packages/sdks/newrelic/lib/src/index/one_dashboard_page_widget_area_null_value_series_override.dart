// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetAreaNullValueSeriesOverride {
  /// Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  final pulumi.Input<String>? nullValue;
  /// Series name
  final pulumi.Input<String>? seriesName;

  /// Creates a new [OneDashboardPageWidgetAreaNullValueSeriesOverride].
  /// [nullValue] Choose an option in displaying null values. Accepted values are `default`, `remove`, `preserve`, or `zero`.
  /// [seriesName] Series name
  OneDashboardPageWidgetAreaNullValueSeriesOverride({
    this.nullValue,
    this.seriesName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nullValue': ?nullValue,
      'seriesName': ?seriesName,
    };
  }

  factory OneDashboardPageWidgetAreaNullValueSeriesOverride.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetAreaNullValueSeriesOverride(
      nullValue: map['nullValue'] == null ? null : (map['nullValue']! as String).input(),
      seriesName: map['seriesName'] == null ? null : (map['seriesName']! as String).input(),
    );
  }
}

