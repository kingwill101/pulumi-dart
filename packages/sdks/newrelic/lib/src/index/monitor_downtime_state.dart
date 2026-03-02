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
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      endRepeat: map['endRepeat'] == null ? null : (MonitorDowntimeEndRepeat.fromMap((map['endRepeat']! as Map).cast<String, dynamic>())).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      frequency: map['frequency'] == null ? null : (MonitorDowntimeFrequency.fromMap((map['frequency']! as Map).cast<String, dynamic>())).input(),
      maintenanceDays: map['maintenanceDays'] == null ? null : ((map['maintenanceDays']! as List).cast<String>()).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      monitorGuids: map['monitorGuids'] == null ? null : ((map['monitorGuids']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

