// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_stateful_agent_manual_resource_prediction_friday_schedule.dart';
import 'managed_dev_ops_pool_stateful_agent_manual_resource_prediction_monday_schedule.dart';
import 'managed_dev_ops_pool_stateful_agent_manual_resource_prediction_saturday_schedule.dart';
import 'managed_dev_ops_pool_stateful_agent_manual_resource_prediction_sunday_schedule.dart';
import 'managed_dev_ops_pool_stateful_agent_manual_resource_prediction_thursday_schedule.dart';
import 'managed_dev_ops_pool_stateful_agent_manual_resource_prediction_tuesday_schedule.dart';
import 'managed_dev_ops_pool_stateful_agent_manual_resource_prediction_wednesday_schedule.dart';

class ManagedDevOpsPoolStatefulAgentManualResourcePrediction {
  /// A number of agents available 24/7 all week. Possible values range between `1` and `maximumConcurrency`.
  final pulumi.Input<int?>? allWeekSchedule;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule>?>? fridaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule>?>? mondaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule>?>? saturdaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule>?>? sundaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule>?>? thursdaySchedules;
  /// Specifies the time zone for the predictions data to be provisioned at. Defaults to `UTC`.
  ///
  /// &gt; **Note:** A list of possible values for `timeZoneName` are available by executing `[System.TimeZoneInfo]::GetSystemTimeZones()` in PowerShell.
  final pulumi.Input<String?>? timeZoneName;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule>?>? tuesdaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  ///
  /// &gt; **Note:** Exactly one of `allWeekSchedule` or at least one individual daily schedule block must be specified.
  ///
  /// &gt; **Note:** Please refer to [Microsoft documentation](https://learn.microsoft.com/azure/devops/managed-devops-pools/configure-scaling?view=azure-devops&tabs=azure-cli#manual) for more information about the manual predictions setup.
  final pulumi.Input<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule>?>? wednesdaySchedules;

  /// Creates a new [ManagedDevOpsPoolStatefulAgentManualResourcePrediction].
  /// [allWeekSchedule] A number of agents available 24/7 all week. Possible values range between `1` and `maximumConcurrency`.
  /// [fridaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [mondaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [saturdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [sundaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [thursdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [timeZoneName] Specifies the time zone for the predictions data to be provisioned at. Defaults to `UTC`.
  /// [tuesdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [wednesdaySchedules] One or more `dailySchedule` blocks as defined below.
  const ManagedDevOpsPoolStatefulAgentManualResourcePrediction({
    this.allWeekSchedule,
    this.fridaySchedules,
    this.mondaySchedules,
    this.saturdaySchedules,
    this.sundaySchedules,
    this.thursdaySchedules,
    this.timeZoneName,
    this.tuesdaySchedules,
    this.wednesdaySchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allWeekSchedule': ?allWeekSchedule,
      'fridaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule>, List<Map<String, dynamic>>>(fridaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mondaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule>, List<Map<String, dynamic>>>(mondaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'saturdaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule>, List<Map<String, dynamic>>>(saturdaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sundaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule>, List<Map<String, dynamic>>>(sundaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thursdaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule>, List<Map<String, dynamic>>>(thursdaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZoneName': ?timeZoneName,
      'tuesdaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule>, List<Map<String, dynamic>>>(tuesdaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wednesdaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule>, List<Map<String, dynamic>>>(wednesdaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedDevOpsPoolStatefulAgentManualResourcePrediction.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolStatefulAgentManualResourcePrediction(
      allWeekSchedule: (() { final guardedValue = map['allWeekSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      fridaySchedules: (() { final guardedValue = map['fridaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mondaySchedules: (() { final guardedValue = map['mondaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      saturdaySchedules: (() { final guardedValue = map['saturdaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sundaySchedules: (() { final guardedValue = map['sundaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      thursdaySchedules: (() { final guardedValue = map['thursdaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZoneName: (() { final guardedValue = map['timeZoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tuesdaySchedules: (() { final guardedValue = map['tuesdaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wednesdaySchedules: (() { final guardedValue = map['wednesdaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
