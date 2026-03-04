// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_policy_daily_schedule.dart';
import 'get_snapshot_policy_hourly_schedule.dart';
import 'get_snapshot_policy_monthly_schedule.dart';
import 'get_snapshot_policy_weekly_schedule.dart';

/// Result data returned by getSnapshotPolicy.
class GetSnapshotPolicyResult {
  /// The name of the NetApp Account in which the NetApp Snapshot Policy was created.
  final String accountName;

  /// Daily snapshot schedule.
  final List<GetSnapshotPolicyDailySchedule> dailySchedules;

  /// Defines that the NetApp Snapshot Policy is enabled or not.
  final bool enabled;

  /// Hourly snapshot schedule.
  final List<GetSnapshotPolicyHourlySchedule> hourlySchedules;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Specifies the supported Azure location where the resource exists.
  final String location;

  /// List of the days of the month when the snapshots will be created.
  final List<GetSnapshotPolicyMonthlySchedule> monthlySchedules;

  /// The name of the NetApp Snapshot Policy.
  final String name;

  /// The name of the resource group where the NetApp Snapshot Policy should be created.
  final String resourceGroupName;
  final Map<String, String> tags;

  /// Weekly snapshot schedule.
  final List<GetSnapshotPolicyWeeklySchedule> weeklySchedules;

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
  /// [tags] Required.
  /// [weeklySchedules] Weekly snapshot schedule.
  GetSnapshotPolicyResult({
    required this.accountName,
    required this.dailySchedules,
    required this.enabled,
    required this.hourlySchedules,
    required this.id,
    required this.location,
    required this.monthlySchedules,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.weeklySchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dailySchedules':
          pulumi.Input.encodeList<
            GetSnapshotPolicyDailySchedule,
            Map<String, dynamic>
          >(dailySchedules, (value) => value.toMap()),
      'enabled': enabled,
      'hourlySchedules':
          pulumi.Input.encodeList<
            GetSnapshotPolicyHourlySchedule,
            Map<String, dynamic>
          >(hourlySchedules, (value) => value.toMap()),
      'id': id,
      'location': location,
      'monthlySchedules':
          pulumi.Input.encodeList<
            GetSnapshotPolicyMonthlySchedule,
            Map<String, dynamic>
          >(monthlySchedules, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'weeklySchedules':
          pulumi.Input.encodeList<
            GetSnapshotPolicyWeeklySchedule,
            Map<String, dynamic>
          >(weeklySchedules, (value) => value.toMap()),
    };
  }

  factory GetSnapshotPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyResult(
      accountName: map['accountName'] as String,
      dailySchedules: pulumi.Input.decodeList<GetSnapshotPolicyDailySchedule>(
        map['dailySchedules']!,
        (value) => GetSnapshotPolicyDailySchedule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      enabled: map['enabled'] as bool,
      hourlySchedules: pulumi.Input.decodeList<GetSnapshotPolicyHourlySchedule>(
        map['hourlySchedules']!,
        (value) => GetSnapshotPolicyHourlySchedule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      location: map['location'] as String,
      monthlySchedules:
          pulumi.Input.decodeList<GetSnapshotPolicyMonthlySchedule>(
            map['monthlySchedules']!,
            (value) => GetSnapshotPolicyMonthlySchedule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      weeklySchedules: pulumi.Input.decodeList<GetSnapshotPolicyWeeklySchedule>(
        map['weeklySchedules']!,
        (value) => GetSnapshotPolicyWeeklySchedule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
