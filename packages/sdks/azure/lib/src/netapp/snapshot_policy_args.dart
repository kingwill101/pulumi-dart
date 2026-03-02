// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_policy_daily_schedule.dart';
import 'snapshot_policy_hourly_schedule.dart';
import 'snapshot_policy_monthly_schedule.dart';
import 'snapshot_policy_weekly_schedule.dart';

/// {@template pulumi_netapp_snapshot_policy_snapshot_policy_args_doc}
/// The set of arguments for SnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_snapshot_policy_snapshot_policy_args_doc}
class SnapshotPolicyArgs {
  /// The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;
  /// Sets a daily snapshot schedule. A `daily_schedule` block as defined below.
  final pulumi.Input<SnapshotPolicyDailySchedule>? dailySchedule;
  /// Defines that the NetApp Snapshot Policy is enabled or not.
  final pulumi.Input<bool> enabled;
  /// Sets an hourly snapshot schedule. A `hourly_schedule` block as defined below.
  final pulumi.Input<SnapshotPolicyHourlySchedule>? hourlySchedule;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Sets a monthly snapshot schedule. A `monthly_schedule` block as defined below.
  final pulumi.Input<SnapshotPolicyMonthlySchedule>? monthlySchedule;
  /// The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Sets a weekly snapshot schedule. A `weekly_schedule` block as defined below.
  final pulumi.Input<SnapshotPolicyWeeklySchedule>? weeklySchedule;

  /// Creates a new [SnapshotPolicyArgs].
  /// [accountName] The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  /// [dailySchedule] Sets a daily snapshot schedule. A `daily_schedule` block as defined below.
  /// [enabled] Defines that the NetApp Snapshot Policy is enabled or not.
  /// [hourlySchedule] Sets an hourly snapshot schedule. A `hourly_schedule` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [monthlySchedule] Sets a monthly snapshot schedule. A `monthly_schedule` block as defined below.
  /// [name] The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [weeklySchedule] Sets a weekly snapshot schedule. A `weekly_schedule` block as defined below.
  SnapshotPolicyArgs({
    required this.accountName,
    this.dailySchedule,
    required this.enabled,
    this.hourlySchedule,
    this.location,
    this.monthlySchedule,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyDailySchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'enabled': enabled,
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyHourlySchedule, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'location': ?location,
      'monthlySchedule': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyMonthlySchedule, Map<String, dynamic>>(monthlySchedule, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyWeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory SnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      dailySchedule: map['dailySchedule'] == null ? null : (SnapshotPolicyDailySchedule.fromMap((map['dailySchedule']! as Map).cast<String, dynamic>())).input(),
      enabled: (map['enabled'] as bool).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (SnapshotPolicyHourlySchedule.fromMap((map['hourlySchedule']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      monthlySchedule: map['monthlySchedule'] == null ? null : (SnapshotPolicyMonthlySchedule.fromMap((map['monthlySchedule']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (SnapshotPolicyWeeklySchedule.fromMap((map['weeklySchedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

