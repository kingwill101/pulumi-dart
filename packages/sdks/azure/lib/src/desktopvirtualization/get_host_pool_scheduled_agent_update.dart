// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_pool_scheduled_agent_update_schedule.dart';

class GetHostPoolScheduledAgentUpdate {
  /// Are scheduled updates of the AVD agent components (RDAgent, Geneva Monitoring agent, and side-by-side stack) enabled on session hosts.
  final pulumi.Input<bool> enabled;
  /// A `schedule` block as defined below.
  final pulumi.Input<List<GetHostPoolScheduledAgentUpdateSchedule>> schedules;
  /// The time zone in which the agent update schedule will apply.
  final pulumi.Input<String> timezone;
  /// Specifies whether scheduled agent updates should be applied based on the timezone of the affected session host.
  final pulumi.Input<bool> useSessionHostTimezone;

  /// Creates a new [GetHostPoolScheduledAgentUpdate].
  /// [enabled] Are scheduled updates of the AVD agent components (RDAgent, Geneva Monitoring agent, and side-by-side stack) enabled on session hosts.
  /// [schedules] A `schedule` block as defined below.
  /// [timezone] The time zone in which the agent update schedule will apply.
  /// [useSessionHostTimezone] Specifies whether scheduled agent updates should be applied based on the timezone of the affected session host.
  GetHostPoolScheduledAgentUpdate({
    required this.enabled,
    required this.schedules,
    required this.timezone,
    required this.useSessionHostTimezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'schedules': pulumi.Input.mapInputValue<List<GetHostPoolScheduledAgentUpdateSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<GetHostPoolScheduledAgentUpdateSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezone': timezone,
      'useSessionHostTimezone': useSessionHostTimezone,
    };
  }

  factory GetHostPoolScheduledAgentUpdate.fromMap(Map<String, dynamic> map) {
    return GetHostPoolScheduledAgentUpdate(
      enabled: (map['enabled'] as bool).input(),
      schedules: (pulumi.Input.decodeList<GetHostPoolScheduledAgentUpdateSchedule>(map['schedules'], (value) => GetHostPoolScheduledAgentUpdateSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timezone: (map['timezone'] as String).input(),
      useSessionHostTimezone: (map['useSessionHostTimezone'] as bool).input(),
    );
  }
}

