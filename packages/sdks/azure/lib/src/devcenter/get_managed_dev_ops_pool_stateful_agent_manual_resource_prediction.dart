// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_stateful_agent_manual_resource_prediction_friday_schedule.dart';
import 'get_managed_dev_ops_pool_stateful_agent_manual_resource_prediction_monday_schedule.dart';
import 'get_managed_dev_ops_pool_stateful_agent_manual_resource_prediction_saturday_schedule.dart';
import 'get_managed_dev_ops_pool_stateful_agent_manual_resource_prediction_sunday_schedule.dart';
import 'get_managed_dev_ops_pool_stateful_agent_manual_resource_prediction_thursday_schedule.dart';
import 'get_managed_dev_ops_pool_stateful_agent_manual_resource_prediction_tuesday_schedule.dart';
import 'get_managed_dev_ops_pool_stateful_agent_manual_resource_prediction_wednesday_schedule.dart';

class GetManagedDevOpsPoolStatefulAgentManualResourcePrediction {
  /// A number of agents available 24/7 all week.
  final pulumi.Input<int> allWeekSchedule;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule>> fridaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule>> mondaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule>> saturdaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule>> sundaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule>> thursdaySchedules;
  /// The time zone for the predictions data to be provisioned at.
  final pulumi.Input<String> timeZoneName;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule>> tuesdaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule>> wednesdaySchedules;

  /// Creates a new [GetManagedDevOpsPoolStatefulAgentManualResourcePrediction].
  /// [allWeekSchedule] A number of agents available 24/7 all week.
  /// [fridaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [mondaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [saturdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [sundaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [thursdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [timeZoneName] The time zone for the predictions data to be provisioned at.
  /// [tuesdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [wednesdaySchedules] One or more `dailySchedule` blocks as defined below.
  const GetManagedDevOpsPoolStatefulAgentManualResourcePrediction({
    required this.allWeekSchedule,
    required this.fridaySchedules,
    required this.mondaySchedules,
    required this.saturdaySchedules,
    required this.sundaySchedules,
    required this.thursdaySchedules,
    required this.timeZoneName,
    required this.tuesdaySchedules,
    required this.wednesdaySchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allWeekSchedule': allWeekSchedule,
      'fridaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule>, List<Map<String, dynamic>>>(fridaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mondaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule>, List<Map<String, dynamic>>>(mondaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'saturdaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule>, List<Map<String, dynamic>>>(saturdaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sundaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule>, List<Map<String, dynamic>>>(sundaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thursdaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule>, List<Map<String, dynamic>>>(thursdaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZoneName': timeZoneName,
      'tuesdaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule>, List<Map<String, dynamic>>>(tuesdaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wednesdaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule>, List<Map<String, dynamic>>>(wednesdaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedDevOpsPoolStatefulAgentManualResourcePrediction.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolStatefulAgentManualResourcePrediction(
      allWeekSchedule: pulumi.Input.fromValue(map['allWeekSchedule'] as int),
      fridaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule>(map['fridaySchedules']!, (value) => GetManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      mondaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule>(map['mondaySchedules']!, (value) => GetManagedDevOpsPoolStatefulAgentManualResourcePredictionMondaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      saturdaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule>(map['saturdaySchedules']!, (value) => GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSaturdaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      sundaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule>(map['sundaySchedules']!, (value) => GetManagedDevOpsPoolStatefulAgentManualResourcePredictionSundaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      thursdaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule>(map['thursdaySchedules']!, (value) => GetManagedDevOpsPoolStatefulAgentManualResourcePredictionThursdaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      timeZoneName: pulumi.Input.fromValue(map['timeZoneName'] as String),
      tuesdaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule>(map['tuesdaySchedules']!, (value) => GetManagedDevOpsPoolStatefulAgentManualResourcePredictionTuesdaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      wednesdaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule>(map['wednesdaySchedules']!, (value) => GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
