// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_vmshutdown_schedule_notification_settings.dart';

/// {@template pulumi_devtest_global_vmshutdown_schedule_global_vmshutdown_schedule_args_doc}
/// The set of arguments for GlobalVMShutdownSchedule.
/// {@endtemplate}
/// {@macro pulumi_devtest_global_vmshutdown_schedule_global_vmshutdown_schedule_args_doc}
class GlobalVMShutdownScheduleArgs {
  /// The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.)
  final pulumi.Input<String> dailyRecurrenceTime;
  /// Whether to enable the schedule. Possible values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The location where the schedule is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The notification setting of a schedule. A `notification_settings` block as defined below.
  final pulumi.Input<GlobalVMShutdownScheduleNotificationSettings> notificationSettings;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The time zone ID (e.g. Pacific Standard time). Refer to this guide for a [full list of accepted time zone names](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  final pulumi.Input<String> timezone;
  /// The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [GlobalVMShutdownScheduleArgs].
  /// [dailyRecurrenceTime] The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.)
  /// [enabled] Whether to enable the schedule. Possible values are `true` and `false`. Defaults to `true`.
  /// [location] The location where the schedule is created. Changing this forces a new resource to be created.
  /// [notificationSettings] The notification setting of a schedule. A `notification_settings` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [timezone] The time zone ID (e.g. Pacific Standard time). Refer to this guide for a [full list of accepted time zone names](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  /// [virtualMachineId] The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created.
  GlobalVMShutdownScheduleArgs({
    required pulumi.Output<String> dailyRecurrenceTime,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? location,
    required pulumi.Output<GlobalVMShutdownScheduleNotificationSettings> notificationSettings,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> timezone,
    required pulumi.Output<String> virtualMachineId,
  }) :
      dailyRecurrenceTime = pulumi.Input.asInput<String>(dailyRecurrenceTime),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      notificationSettings = pulumi.Input.asInput<GlobalVMShutdownScheduleNotificationSettings>(notificationSettings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timezone = pulumi.Input.asInput<String>(timezone),
      virtualMachineId = pulumi.Input.asInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrenceTime': dailyRecurrenceTime,
      'enabled': ?enabled,
      'location': ?location,
      'notificationSettings': pulumi.Input.mapInputValue<GlobalVMShutdownScheduleNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'tags': ?tags,
      'timezone': timezone,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory GlobalVMShutdownScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GlobalVMShutdownScheduleArgs(
      dailyRecurrenceTime: pulumi.Output.create<String>(map['dailyRecurrenceTime'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      notificationSettings: pulumi.Output.create<GlobalVMShutdownScheduleNotificationSettings>(GlobalVMShutdownScheduleNotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timezone: pulumi.Output.create<String>(map['timezone'] as String),
      virtualMachineId: pulumi.Output.create<String>(map['virtualMachineId'] as String),
    );
  }
}

