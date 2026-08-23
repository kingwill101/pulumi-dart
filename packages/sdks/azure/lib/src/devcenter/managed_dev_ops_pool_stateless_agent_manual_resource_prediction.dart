// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_dev_ops_pool_stateless_agent_manual_resource_prediction_friday_schedule.dart';
import 'managed_dev_ops_pool_stateless_agent_manual_resource_prediction_monday_schedule.dart';
import 'managed_dev_ops_pool_stateless_agent_manual_resource_prediction_saturday_schedule.dart';
import 'managed_dev_ops_pool_stateless_agent_manual_resource_prediction_sunday_schedule.dart';
import 'managed_dev_ops_pool_stateless_agent_manual_resource_prediction_thursday_schedule.dart';
import 'managed_dev_ops_pool_stateless_agent_manual_resource_prediction_tuesday_schedule.dart';
import 'managed_dev_ops_pool_stateless_agent_manual_resource_prediction_wednesday_schedule.dart';

class ManagedDevOpsPoolStatelessAgentManualResourcePrediction {
  /// A number of agents available 24/7 all week. Possible values range between `1` and `maximumConcurrency`.
  final pulumi.Input<int>? allWeekSchedule;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule>>? fridaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule>>? mondaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule>>? saturdaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule>>? sundaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule>>? thursdaySchedules;
  /// Specifies the time zone for the predictions data to be provisioned at. Defaults to `UTC`.
  ///
  /// &gt; **Note:** A list of possible values for `timeZoneName` are available by executing `[System.TimeZoneInfo]::GetSystemTimeZones()` in PowerShell.
  final pulumi.Input<String>? timeZoneName;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule>>? tuesdaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  ///
  /// &gt; **Note:** Exactly one of `allWeekSchedule` or at least one individual daily schedule block must be specified.
  ///
  /// &gt; **Note:** Please refer to [Microsoft documentation](https://learn.microsoft.com/azure/devops/managed-devops-pools/configure-scaling?view=azure-devops&tabs=azure-cli#manual) for more information about the manual predictions setup.
  final pulumi.Input<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule>>? wednesdaySchedules;

  /// Creates a new [ManagedDevOpsPoolStatelessAgentManualResourcePrediction].
  /// [allWeekSchedule] A number of agents available 24/7 all week. Possible values range between `1` and `maximumConcurrency`.
  /// [fridaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [mondaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [saturdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [sundaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [thursdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [timeZoneName] Specifies the time zone for the predictions data to be provisioned at. Defaults to `UTC`.
  /// [tuesdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [wednesdaySchedules] One or more `dailySchedule` blocks as defined below.
  const ManagedDevOpsPoolStatelessAgentManualResourcePrediction({
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
      'fridaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule>, List<Map<String, dynamic>>>(fridaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mondaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule>, List<Map<String, dynamic>>>(mondaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'saturdaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule>, List<Map<String, dynamic>>>(saturdaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sundaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule>, List<Map<String, dynamic>>>(sundaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thursdaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule>, List<Map<String, dynamic>>>(thursdaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZoneName': ?timeZoneName,
      'tuesdaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule>, List<Map<String, dynamic>>>(tuesdaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wednesdaySchedules': ?pulumi.Input.mapOptionalInputValue<List<ManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule>, List<Map<String, dynamic>>>(wednesdaySchedules, (value) => pulumi.Input.encodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedDevOpsPoolStatelessAgentManualResourcePrediction.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolStatelessAgentManualResourcePrediction(
      allWeekSchedule: (() { final guardedValue = map['allWeekSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fridaySchedules: (() { final guardedValue = map['fridaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mondaySchedules: (() { final guardedValue = map['mondaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      saturdaySchedules: (() { final guardedValue = map['saturdaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sundaySchedules: (() { final guardedValue = map['sundaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      thursdaySchedules: (() { final guardedValue = map['thursdaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZoneName: (() { final guardedValue = map['timeZoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tuesdaySchedules: (() { final guardedValue = map['tuesdaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wednesdaySchedules: (() { final guardedValue = map['wednesdaySchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule>(guardedValue, (value) => ManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
