// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_dev_ops_pool_stateless_agent_manual_resource_prediction_friday_schedule.dart';
import 'get_managed_dev_ops_pool_stateless_agent_manual_resource_prediction_monday_schedule.dart';
import 'get_managed_dev_ops_pool_stateless_agent_manual_resource_prediction_saturday_schedule.dart';
import 'get_managed_dev_ops_pool_stateless_agent_manual_resource_prediction_sunday_schedule.dart';
import 'get_managed_dev_ops_pool_stateless_agent_manual_resource_prediction_thursday_schedule.dart';
import 'get_managed_dev_ops_pool_stateless_agent_manual_resource_prediction_tuesday_schedule.dart';
import 'get_managed_dev_ops_pool_stateless_agent_manual_resource_prediction_wednesday_schedule.dart';

class GetManagedDevOpsPoolStatelessAgentManualResourcePrediction {
  /// A number of agents available 24/7 all week.
  final pulumi.Input<int> allWeekSchedule;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule>> fridaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule>> mondaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule>> saturdaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule>> sundaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule>> thursdaySchedules;
  /// The time zone for the predictions data to be provisioned at.
  final pulumi.Input<String> timeZoneName;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule>> tuesdaySchedules;
  /// One or more `dailySchedule` blocks as defined below.
  final pulumi.Input<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule>> wednesdaySchedules;

  /// Creates a new [GetManagedDevOpsPoolStatelessAgentManualResourcePrediction].
  /// [allWeekSchedule] A number of agents available 24/7 all week.
  /// [fridaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [mondaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [saturdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [sundaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [thursdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [timeZoneName] The time zone for the predictions data to be provisioned at.
  /// [tuesdaySchedules] One or more `dailySchedule` blocks as defined below.
  /// [wednesdaySchedules] One or more `dailySchedule` blocks as defined below.
  const GetManagedDevOpsPoolStatelessAgentManualResourcePrediction({
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
      'fridaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule>, List<Map<String, dynamic>>>(fridaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mondaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule>, List<Map<String, dynamic>>>(mondaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'saturdaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule>, List<Map<String, dynamic>>>(saturdaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sundaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule>, List<Map<String, dynamic>>>(sundaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thursdaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule>, List<Map<String, dynamic>>>(thursdaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZoneName': timeZoneName,
      'tuesdaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule>, List<Map<String, dynamic>>>(tuesdaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wednesdaySchedules': pulumi.Input.mapInputValue<List<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule>, List<Map<String, dynamic>>>(wednesdaySchedules, (value) => pulumi.Input.encodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedDevOpsPoolStatelessAgentManualResourcePrediction.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolStatelessAgentManualResourcePrediction(
      allWeekSchedule: pulumi.Input.fromValue((map['allWeekSchedule'] as num).toInt()),
      fridaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule>(map['fridaySchedules']!, (value) => GetManagedDevOpsPoolStatelessAgentManualResourcePredictionFridaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      mondaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule>(map['mondaySchedules']!, (value) => GetManagedDevOpsPoolStatelessAgentManualResourcePredictionMondaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      saturdaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule>(map['saturdaySchedules']!, (value) => GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSaturdaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      sundaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule>(map['sundaySchedules']!, (value) => GetManagedDevOpsPoolStatelessAgentManualResourcePredictionSundaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      thursdaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule>(map['thursdaySchedules']!, (value) => GetManagedDevOpsPoolStatelessAgentManualResourcePredictionThursdaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      timeZoneName: pulumi.Input.fromValue(map['timeZoneName'] as String),
      tuesdaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule>(map['tuesdaySchedules']!, (value) => GetManagedDevOpsPoolStatelessAgentManualResourcePredictionTuesdaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
      wednesdaySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule>(map['wednesdaySchedules']!, (value) => GetManagedDevOpsPoolStatelessAgentManualResourcePredictionWednesdaySchedule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
