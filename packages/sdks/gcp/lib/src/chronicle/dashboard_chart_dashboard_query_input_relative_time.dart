// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardQueryInputRelativeTime {
  /// (Required)
  final pulumi.Input<String> startTimeVal;
  /// The time unit for the relative range.
  /// Possible values are: `SECOND`, `MINUTE`, `HOUR`, `DAY`, `WEEK`, `MONTH`, `YEAR`.
  final pulumi.Input<String> timeUnit;

  /// Creates a new [DashboardChartDashboardQueryInputRelativeTime].
  /// [startTimeVal] (Required)
  /// [timeUnit] The time unit for the relative range.
  const DashboardChartDashboardQueryInputRelativeTime({
    required this.startTimeVal,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTimeVal': startTimeVal,
      'timeUnit': timeUnit,
    };
  }

  factory DashboardChartDashboardQueryInputRelativeTime.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardQueryInputRelativeTime(
      startTimeVal: pulumi.Input.fromValue(map['startTimeVal'] as String),
      timeUnit: pulumi.Input.fromValue(map['timeUnit'] as String),
    );
  }
}
