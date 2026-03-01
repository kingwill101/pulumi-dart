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
    required pulumi.Output<String> accountName,
    pulumi.Output<SnapshotPolicyDailySchedule>? dailySchedule,
    required pulumi.Output<bool> enabled,
    pulumi.Output<SnapshotPolicyHourlySchedule>? hourlySchedule,
    pulumi.Output<String>? location,
    pulumi.Output<SnapshotPolicyMonthlySchedule>? monthlySchedule,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SnapshotPolicyWeeklySchedule>? weeklySchedule,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dailySchedule = pulumi.Input.asOptionalInput<SnapshotPolicyDailySchedule>(dailySchedule),
      enabled = pulumi.Input.asInput<bool>(enabled),
      hourlySchedule = pulumi.Input.asOptionalInput<SnapshotPolicyHourlySchedule>(hourlySchedule),
      location = pulumi.Input.asOptionalInput<String>(location),
      monthlySchedule = pulumi.Input.asOptionalInput<SnapshotPolicyMonthlySchedule>(monthlySchedule),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      weeklySchedule = pulumi.Input.asOptionalInput<SnapshotPolicyWeeklySchedule>(weeklySchedule);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dailySchedule: map['dailySchedule'] == null ? null : pulumi.Output.create<SnapshotPolicyDailySchedule>(SnapshotPolicyDailySchedule.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>())),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      hourlySchedule: map['hourlySchedule'] == null ? null : pulumi.Output.create<SnapshotPolicyHourlySchedule>(SnapshotPolicyHourlySchedule.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      monthlySchedule: map['monthlySchedule'] == null ? null : pulumi.Output.create<SnapshotPolicyMonthlySchedule>(SnapshotPolicyMonthlySchedule.fromMap((map['monthlySchedule'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      weeklySchedule: map['weeklySchedule'] == null ? null : pulumi.Output.create<SnapshotPolicyWeeklySchedule>(SnapshotPolicyWeeklySchedule.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>())),
    );
  }
}

