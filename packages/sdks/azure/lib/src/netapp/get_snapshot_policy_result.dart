// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_policy_daily_schedule.dart';
import 'get_snapshot_policy_hourly_schedule.dart';
import 'get_snapshot_policy_monthly_schedule.dart';
import 'get_snapshot_policy_weekly_schedule.dart';

/// Result data returned by getSnapshotPolicy.
class GetSnapshotPolicyResult {
  /// The name of the NetApp Account in which the NetApp Snapshot Policy was created.
  final String? accountName;
  /// Daily snapshot schedule.
  final List<GetSnapshotPolicyDailySchedule>? dailySchedules;
  /// Defines that the NetApp Snapshot Policy is enabled or not.
  final bool? enabled;
  /// Hourly snapshot schedule.
  final List<GetSnapshotPolicyHourlySchedule>? hourlySchedules;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies the supported Azure location where the resource exists.
  final String? location;
  /// List of the days of the month when the snapshots will be created.
  final List<GetSnapshotPolicyMonthlySchedule>? monthlySchedules;
  /// The name of the NetApp Snapshot Policy.
  final String? name;
  /// The name of the resource group where the NetApp Snapshot Policy should be created.
  final String? resourceGroupName;
  final Map<String, String>? tags;
  /// Weekly snapshot schedule.
  final List<GetSnapshotPolicyWeeklySchedule>? weeklySchedules;

  /// Creates a new [GetSnapshotPolicyResult].
  /// [accountName] The name of the NetApp Account in which the NetApp Snapshot Policy was created.
  /// [dailySchedules] Daily snapshot schedule.
  /// [enabled] Defines that the NetApp Snapshot Policy is enabled or not.
  /// [hourlySchedules] Hourly snapshot schedule.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Specifies the supported Azure location where the resource exists.
  /// [monthlySchedules] List of the days of the month when the snapshots will be created.
  /// [name] The name of the NetApp Snapshot Policy.
  /// [resourceGroupName] The name of the resource group where the NetApp Snapshot Policy should be created.
  /// [tags] Optional.
  /// [weeklySchedules] Weekly snapshot schedule.
  const GetSnapshotPolicyResult({
    this.accountName,
    this.dailySchedules,
    this.enabled,
    this.hourlySchedules,
    this.id,
    this.location,
    this.monthlySchedules,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.weeklySchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'dailySchedules': ?(() { final guardedValue = dailySchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotPolicyDailySchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'hourlySchedules': ?(() { final guardedValue = hourlySchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotPolicyHourlySchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'monthlySchedules': ?(() { final guardedValue = monthlySchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotPolicyMonthlySchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'weeklySchedules': ?(() { final guardedValue = weeklySchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnapshotPolicyWeeklySchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSnapshotPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dailySchedules: (() { final guardedValue = map['dailySchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotPolicyDailySchedule>(guardedValue, (value) => GetSnapshotPolicyDailySchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hourlySchedules: (() { final guardedValue = map['hourlySchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotPolicyHourlySchedule>(guardedValue, (value) => GetSnapshotPolicyHourlySchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monthlySchedules: (() { final guardedValue = map['monthlySchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotPolicyMonthlySchedule>(guardedValue, (value) => GetSnapshotPolicyMonthlySchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      weeklySchedules: (() { final guardedValue = map['weeklySchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnapshotPolicyWeeklySchedule>(guardedValue, (value) => GetSnapshotPolicyWeeklySchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
