// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_downtime_end_repeat.dart';
import 'monitor_downtime_frequency.dart';

/// Input properties used for looking up and filtering MonitorDowntime resources.
class MonitorDowntimeState {
  /// The ID of the New Relic account in which the Monitor Downtime shall be created. Defaults to the `account_id` in the provider{} configuration if not specified.
  final pulumi.Input<String>? accountId;
  /// A specification of when the Monitor Downtime should end its repeat cycle, by number of occurrences or date.
  final pulumi.Input<MonitorDowntimeEndRepeat>? endRepeat;
  /// A datetime stamp signifying the end of the Monitor Downtime.
  final pulumi.Input<String>? endTime;
  /// Configuration options for which days of the month a monitor downtime will occur
  final pulumi.Input<MonitorDowntimeFrequency>? frequency;
  /// A list of maintenance days to be included with the created weekly Monitor Downtime.
  final pulumi.Input<List<String>>? maintenanceDays;
  /// An identifier of the type of Monitor Downtime to be created.
  final pulumi.Input<String>? mode;
  /// A list of GUIDs of monitors, to which the created Monitor Downtime shall be applied.
  final pulumi.Input<List<String>>? monitorGuids;
  /// A name to identify the Monitor Downtime to be created.
  final pulumi.Input<String>? name;
  /// A datetime stamp signifying the start of the Monitor Downtime.
  final pulumi.Input<String>? startTime;
  /// The timezone that applies to the Monitor Downtime schedule.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [MonitorDowntimeState].
  /// [accountId] The ID of the New Relic account in which the Monitor Downtime shall be created. Defaults to the `account_id` in the provider{} configuration if not specified.
  /// [endRepeat] A specification of when the Monitor Downtime should end its repeat cycle, by number of occurrences or date.
  /// [endTime] A datetime stamp signifying the end of the Monitor Downtime.
  /// [frequency] Configuration options for which days of the month a monitor downtime will occur
  /// [maintenanceDays] A list of maintenance days to be included with the created weekly Monitor Downtime.
  /// [mode] An identifier of the type of Monitor Downtime to be created.
  /// [monitorGuids] A list of GUIDs of monitors, to which the created Monitor Downtime shall be applied.
  /// [name] A name to identify the Monitor Downtime to be created.
  /// [startTime] A datetime stamp signifying the start of the Monitor Downtime.
  /// [timeZone] The timezone that applies to the Monitor Downtime schedule.
  MonitorDowntimeState({
    this.accountId,
    this.endRepeat,
    this.endTime,
    this.frequency,
    this.maintenanceDays,
    this.mode,
    this.monitorGuids,
    this.name,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'endRepeat': ?pulumi.Input.mapOptionalInputValue<MonitorDowntimeEndRepeat, Map<String, dynamic>>(endRepeat, (value) => value.toMap()),
      'endTime': ?endTime,
      'frequency': ?pulumi.Input.mapOptionalInputValue<MonitorDowntimeFrequency, Map<String, dynamic>>(frequency, (value) => value.toMap()),
      'maintenanceDays': ?maintenanceDays,
      'mode': ?mode,
      'monitorGuids': ?monitorGuids,
      'name': ?name,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory MonitorDowntimeState.fromMap(Map<String, dynamic> map) {
    return MonitorDowntimeState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endRepeat: (() { final guardedValue = map['endRepeat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorDowntimeEndRepeat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorDowntimeFrequency.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceDays: (() { final guardedValue = map['maintenanceDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorGuids: (() { final guardedValue = map['monitorGuids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

