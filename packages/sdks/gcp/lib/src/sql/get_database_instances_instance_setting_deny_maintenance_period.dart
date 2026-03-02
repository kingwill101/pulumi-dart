// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod {
  /// End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final pulumi.Input<String> endDate;
  /// Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final pulumi.Input<String> startDate;
  /// Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  final pulumi.Input<String> time;

  /// Creates a new [GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod].
  /// [endDate] End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [startDate] Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [time] Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod({
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

  factory GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingDenyMaintenancePeriod(
      endDate: (map['endDate'] as String).input(),
      startDate: (map['startDate'] as String).input(),
      time: (map['time'] as String).input(),
    );
  }
}

