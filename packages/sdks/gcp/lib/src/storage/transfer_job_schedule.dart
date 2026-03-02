// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_schedule_schedule_end_date.dart';
import 'transfer_job_schedule_schedule_start_date.dart';
import 'transfer_job_schedule_start_time_of_day.dart';

class TransferJobSchedule {
  /// Interval between the start of each scheduled transfer. If unspecified, the default value is 24 hours. This value may not be less than 1 hour. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? repeatInterval;
  /// The last day the recurring transfer will be run. If `schedule_end_date` is the same as `schedule_start_date`, the transfer will be executed only once. Structure documented below.
  final pulumi.Input<TransferJobScheduleScheduleEndDate>? scheduleEndDate;
  /// The first day the recurring transfer is scheduled to run. If `schedule_start_date` is in the past, the transfer will run for the first time on the following day. Structure documented below.
  final pulumi.Input<TransferJobScheduleScheduleStartDate> scheduleStartDate;
  /// The time in UTC at which the transfer will be scheduled to start in a day. Transfers may start later than this time. If not specified, recurring and one-time transfers that are scheduled to run today will run immediately; recurring transfers that are scheduled to run on a future date will start at approximately midnight UTC on that date. Note that when configuring a transfer with the Cloud Platform Console, the transfer's start time in a day is specified in your local timezone. Structure documented below.
  final pulumi.Input<TransferJobScheduleStartTimeOfDay>? startTimeOfDay;

  /// Creates a new [TransferJobSchedule].
  /// [repeatInterval] Interval between the start of each scheduled transfer. If unspecified, the default value is 24 hours. This value may not be less than 1 hour. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// [scheduleEndDate] The last day the recurring transfer will be run. If `schedule_end_date` is the same as `schedule_start_date`, the transfer will be executed only once. Structure documented below.
  /// [scheduleStartDate] The first day the recurring transfer is scheduled to run. If `schedule_start_date` is in the past, the transfer will run for the first time on the following day. Structure documented below.
  /// [startTimeOfDay] The time in UTC at which the transfer will be scheduled to start in a day. Transfers may start later than this time. If not specified, recurring and one-time transfers that are scheduled to run today will run immediately; recurring transfers that are scheduled to run on a future date will start at approximately midnight UTC on that date. Note that when configuring a transfer with the Cloud Platform Console, the transfer's start time in a day is specified in your local timezone. Structure documented below.
  TransferJobSchedule({
    this.repeatInterval,
    this.scheduleEndDate,
    required this.scheduleStartDate,
    this.startTimeOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repeatInterval': ?repeatInterval,
      'scheduleEndDate': ?pulumi.Input.mapOptionalInputValue<TransferJobScheduleScheduleEndDate, Map<String, dynamic>>(scheduleEndDate, (value) => value.toMap()),
      'scheduleStartDate': pulumi.Input.mapInputValue<TransferJobScheduleScheduleStartDate, Map<String, dynamic>>(scheduleStartDate, (value) => value.toMap()),
      'startTimeOfDay': ?pulumi.Input.mapOptionalInputValue<TransferJobScheduleStartTimeOfDay, Map<String, dynamic>>(startTimeOfDay, (value) => value.toMap()),
    };
  }

  factory TransferJobSchedule.fromMap(Map<String, dynamic> map) {
    return TransferJobSchedule(
      repeatInterval: map['repeatInterval'] == null ? null : (map['repeatInterval'] as String).input(),
      scheduleEndDate: map['scheduleEndDate'] == null ? null : (TransferJobScheduleScheduleEndDate.fromMap((map['scheduleEndDate'] as Map).cast<String, dynamic>())).input(),
      scheduleStartDate: (TransferJobScheduleScheduleStartDate.fromMap((map['scheduleStartDate'] as Map).cast<String, dynamic>())).input(),
      startTimeOfDay: map['startTimeOfDay'] == null ? null : (TransferJobScheduleStartTimeOfDay.fromMap((map['startTimeOfDay'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

