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
    pulumi.Output<String>? accountId,
    pulumi.Output<MonitorDowntimeEndRepeat>? endRepeat,
    pulumi.Output<String>? endTime,
    pulumi.Output<MonitorDowntimeFrequency>? frequency,
    pulumi.Output<List<String>>? maintenanceDays,
    pulumi.Output<String>? mode,
    pulumi.Output<List<String>>? monitorGuids,
    pulumi.Output<String>? name,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? timeZone,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      endRepeat = pulumi.Input.asOptionalInput<MonitorDowntimeEndRepeat>(endRepeat),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      frequency = pulumi.Input.asOptionalInput<MonitorDowntimeFrequency>(frequency),
      maintenanceDays = pulumi.Input.asOptionalInput<List<String>>(maintenanceDays),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      monitorGuids = pulumi.Input.asOptionalInput<List<String>>(monitorGuids),
      name = pulumi.Input.asOptionalInput<String>(name),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      endRepeat: map['endRepeat'] == null ? null : pulumi.Output.create<MonitorDowntimeEndRepeat>(MonitorDowntimeEndRepeat.fromMap((map['endRepeat'] as Map).cast<String, dynamic>())),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<MonitorDowntimeFrequency>(MonitorDowntimeFrequency.fromMap((map['frequency'] as Map).cast<String, dynamic>())),
      maintenanceDays: map['maintenanceDays'] == null ? null : pulumi.Output.create<List<String>>((map['maintenanceDays'] as List).cast<String>()),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      monitorGuids: map['monitorGuids'] == null ? null : pulumi.Output.create<List<String>>((map['monitorGuids'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

