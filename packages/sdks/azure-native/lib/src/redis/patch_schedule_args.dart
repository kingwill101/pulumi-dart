// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_entry.dart';

/// {@template pulumi_redis_patch_schedule_args_doc}
/// The set of arguments for PatchSchedule.
/// {@endtemplate}
/// {@macro pulumi_redis_patch_schedule_args_doc}
class PatchScheduleArgs {
  /// The name of the RedisPatchSchedule
  final pulumi.Input<String>? default_;
  /// The name of the redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// List of patch schedules for a Redis cache.
  final pulumi.Input<List<ScheduleEntry>> scheduleEntries;

  /// Creates a new [PatchScheduleArgs].
  /// [default_] The name of the RedisPatchSchedule
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleEntries] List of patch schedules for a Redis cache.
  PatchScheduleArgs({
    this.default_,
    required this.name,
    required this.resourceGroupName,
    required this.scheduleEntries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scheduleEntries': pulumi.Input.mapInputValue<List<ScheduleEntry>, List<Map<String, dynamic>>>(scheduleEntries, (value) => pulumi.Input.encodeList<ScheduleEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PatchScheduleArgs.fromMap(Map<String, dynamic> map) {
    return PatchScheduleArgs(
      default_: map['default'] == null ? null : (map['default']! as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scheduleEntries: (pulumi.Input.decodeList<ScheduleEntry>(map['scheduleEntries'], (value) => ScheduleEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

