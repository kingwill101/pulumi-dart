// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deny Maintenance Periods. This specifies a date range during when all CSA rollout will be denied.
class DenyMaintenancePeriodResponseSqladminV1beta4 {
  /// "deny maintenance period" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final pulumi.Input<String> endDate;
  /// "deny maintenance period" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final pulumi.Input<String> startDate;
  /// Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  final pulumi.Input<String> time;

  /// Creates a new [DenyMaintenancePeriodResponseSqladminV1beta4].
  /// [endDate] "deny maintenance period" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [startDate] "deny maintenance period" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [time] Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  DenyMaintenancePeriodResponseSqladminV1beta4({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': endDate,
      'startDate': startDate,
      'time': time,
    };
  }

  factory DenyMaintenancePeriodResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DenyMaintenancePeriodResponseSqladminV1beta4(
      endDate: pulumi.Input.fromValue(map['endDate'] as String),
      startDate: pulumi.Input.fromValue(map['startDate'] as String),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}

