// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_policy_daily_schedule.dart';
import 'snapshot_policy_hourly_schedule.dart';
import 'snapshot_policy_monthly_schedule.dart';
import 'snapshot_policy_weekly_schedule.dart';

/// Input properties used for looking up and filtering SnapshotPolicy resources.
class SnapshotPolicyState {
  /// The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? accountName;
  /// Sets a daily snapshot schedule. A `dailySchedule` block as defined below.
  final pulumi.Input<SnapshotPolicyDailySchedule?>? dailySchedule;
  /// Defines that the NetApp Snapshot Policy is enabled or not.
  final pulumi.Input<bool?>? enabled;
  /// Sets an hourly snapshot schedule. A `hourlySchedule` block as defined below.
  final pulumi.Input<SnapshotPolicyHourlySchedule?>? hourlySchedule;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Sets a monthly snapshot schedule. A `monthlySchedule` block as defined below.
  final pulumi.Input<SnapshotPolicyMonthlySchedule?>? monthlySchedule;
  /// The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Sets a weekly snapshot schedule. A `weeklySchedule` block as defined below.
  final pulumi.Input<SnapshotPolicyWeeklySchedule?>? weeklySchedule;

  /// Creates a new [SnapshotPolicyState].
  /// [accountName] The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  /// [dailySchedule] Sets a daily snapshot schedule. A `dailySchedule` block as defined below.
  /// [enabled] Defines that the NetApp Snapshot Policy is enabled or not.
  /// [hourlySchedule] Sets an hourly snapshot schedule. A `hourlySchedule` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [monthlySchedule] Sets a monthly snapshot schedule. A `monthlySchedule` block as defined below.
  /// [name] The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [weeklySchedule] Sets a weekly snapshot schedule. A `weeklySchedule` block as defined below.
  const SnapshotPolicyState({
    this.accountName,
    this.dailySchedule,
    this.enabled,
    this.hourlySchedule,
    this.location,
    this.monthlySchedule,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyDailySchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'enabled': ?enabled,
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyHourlySchedule, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'location': ?location,
      'monthlySchedule': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyMonthlySchedule, Map<String, dynamic>>(monthlySchedule, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<SnapshotPolicyWeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory SnapshotPolicyState.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyState(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotPolicyDailySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hourlySchedule: (() { final guardedValue = map['hourlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotPolicyHourlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monthlySchedule: (() { final guardedValue = map['monthlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotPolicyMonthlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotPolicyWeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
