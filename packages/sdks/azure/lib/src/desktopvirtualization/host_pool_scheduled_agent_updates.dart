// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_pool_scheduled_agent_updates_schedule.dart';

class HostPoolScheduledAgentUpdates {
  /// Enables or disables scheduled updates of the AVD agent components (RDAgent, Geneva Monitoring agent, and side-by-side stack) on session hosts. If this is enabled then up to two `schedule` blocks must be defined. Default is `false`.
  ///
  /// > **Note:** if `enabled` is set to `true` then at least one and a maximum of two `schedule` blocks must be provided.
  final pulumi.Input<bool>? enabled;
  /// A `schedule` block as defined below. A maximum of two blocks can be added.
  final pulumi.Input<List<HostPoolScheduledAgentUpdatesSchedule>>? schedules;
  /// Specifies the time zone in which the agent update schedule will apply, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). If `use_session_host_timezone` is enabled then it will override this setting. Default is `UTC`
  final pulumi.Input<String>? timezone;
  /// Specifies whether scheduled agent updates should be applied based on the timezone of the affected session host. If configured then this setting overrides `timezone`. Default is `false`.
  final pulumi.Input<bool>? useSessionHostTimezone;

  /// Creates a new [HostPoolScheduledAgentUpdates].
  /// [enabled] Enables or disables scheduled updates of the AVD agent components (RDAgent, Geneva Monitoring agent, and side-by-side stack) on session hosts. If this is enabled then up to two `schedule` blocks must be defined. Default is `false`.
  /// [schedules] A `schedule` block as defined below. A maximum of two blocks can be added.
  /// [timezone] Specifies the time zone in which the agent update schedule will apply, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). If `use_session_host_timezone` is enabled then it will override this setting. Default is `UTC`
  /// [useSessionHostTimezone] Specifies whether scheduled agent updates should be applied based on the timezone of the affected session host. If configured then this setting overrides `timezone`. Default is `false`.
  HostPoolScheduledAgentUpdates({
    this.enabled,
    this.schedules,
    this.timezone,
    this.useSessionHostTimezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<HostPoolScheduledAgentUpdatesSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<HostPoolScheduledAgentUpdatesSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezone': ?timezone,
      'useSessionHostTimezone': ?useSessionHostTimezone,
    };
  }

  factory HostPoolScheduledAgentUpdates.fromMap(Map<String, dynamic> map) {
    return HostPoolScheduledAgentUpdates(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      schedules: map['schedules'] == null ? null : (pulumi.Input.decodeList<HostPoolScheduledAgentUpdatesSchedule>(map['schedules']!, (value) => HostPoolScheduledAgentUpdatesSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
      useSessionHostTimezone: map['useSessionHostTimezone'] == null ? null : (map['useSessionHostTimezone']! as bool).input(),
    );
  }
}

