// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_deny_maintenance_period_end_date.dart';
import 'instance_deny_maintenance_period_start_date.dart';
import 'instance_deny_maintenance_period_time.dart';

class InstanceDenyMaintenancePeriod {
  /// Required. Start date of the deny maintenance period
  /// Structure is documented below.
  final pulumi.Input<InstanceDenyMaintenancePeriodEndDate> endDate;

  /// Required. Start date of the deny maintenance period
  /// Structure is documented below.
  final pulumi.Input<InstanceDenyMaintenancePeriodStartDate> startDate;

  /// Required. Start time of the window in UTC time.
  /// Structure is documented below.
  final pulumi.Input<InstanceDenyMaintenancePeriodTime> time;

  /// Creates a new [InstanceDenyMaintenancePeriod].
  /// [endDate] Required. Start date of the deny maintenance period
  /// [startDate] Required. Start date of the deny maintenance period
  /// [time] Required. Start time of the window in UTC time.
  InstanceDenyMaintenancePeriod({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate':
          pulumi.Input.mapInputValue<
            InstanceDenyMaintenancePeriodEndDate,
            Map<String, dynamic>
          >(endDate, (value) => value.toMap()),
      'startDate':
          pulumi.Input.mapInputValue<
            InstanceDenyMaintenancePeriodStartDate,
            Map<String, dynamic>
          >(startDate, (value) => value.toMap()),
      'time':
          pulumi.Input.mapInputValue<
            InstanceDenyMaintenancePeriodTime,
            Map<String, dynamic>
          >(time, (value) => value.toMap()),
    };
  }

  factory InstanceDenyMaintenancePeriod.fromMap(Map<String, dynamic> map) {
    return InstanceDenyMaintenancePeriod(
      endDate: pulumi.Input.fromValue(
        InstanceDenyMaintenancePeriodEndDate.fromMap(
          (map['endDate']! as Map).cast<String, dynamic>(),
        ),
      ),
      startDate: pulumi.Input.fromValue(
        InstanceDenyMaintenancePeriodStartDate.fromMap(
          (map['startDate']! as Map).cast<String, dynamic>(),
        ),
      ),
      time: pulumi.Input.fromValue(
        InstanceDenyMaintenancePeriodTime.fromMap(
          (map['time']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
