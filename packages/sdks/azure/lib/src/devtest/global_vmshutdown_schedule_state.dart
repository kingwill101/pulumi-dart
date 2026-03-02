// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vmshutdown_schedule_notification_settings.dart';

/// Input properties used for looking up and filtering GlobalVMShutdownSchedule resources.
class GlobalVMShutdownScheduleState {
  /// The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.)
  final pulumi.Input<String>? dailyRecurrenceTime;
  /// Whether to enable the schedule. Possible values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The location where the schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The notification setting of a schedule. A `notification_settings` block as defined below.
  final pulumi.Input<GlobalVMShutdownScheduleNotificationSettings>? notificationSettings;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The time zone ID (e.g. Pacific Standard time). Refer to this guide for a [full list of accepted time zone names](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  final pulumi.Input<String>? timezone;
  /// The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [GlobalVMShutdownScheduleState].
  /// [dailyRecurrenceTime] The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.)
  /// [enabled] Whether to enable the schedule. Possible values are `true` and `false`. Defaults to `true`.
  /// [location] The location where the schedule is created. Changing this forces a new resource to be created.
  /// [notificationSettings] The notification setting of a schedule. A `notification_settings` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [timezone] The time zone ID (e.g. Pacific Standard time). Refer to this guide for a [full list of accepted time zone names](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  /// [virtualMachineId] The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created.
  GlobalVMShutdownScheduleState({
    this.dailyRecurrenceTime,
    this.enabled,
    this.location,
    this.notificationSettings,
    this.tags,
    this.timezone,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrenceTime': ?dailyRecurrenceTime,
      'enabled': ?enabled,
      'location': ?location,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<GlobalVMShutdownScheduleNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'tags': ?tags,
      'timezone': ?timezone,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory GlobalVMShutdownScheduleState.fromMap(Map<String, dynamic> map) {
    return GlobalVMShutdownScheduleState(
      dailyRecurrenceTime: map['dailyRecurrenceTime'] == null ? null : (map['dailyRecurrenceTime']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      notificationSettings: map['notificationSettings'] == null ? null : (GlobalVMShutdownScheduleNotificationSettings.fromMap((map['notificationSettings']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
      virtualMachineId: map['virtualMachineId'] == null ? null : (map['virtualMachineId']! as String).input(),
    );
  }
}

