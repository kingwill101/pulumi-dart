// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMaintenanceEvent {
  /// (Output)
  /// The end time of the maintenance event provided in RFC 3339 format.
  final pulumi.Input<String>? endTime;
  /// (Output)
  /// The start time of the maintenance event provided in RFC 3339 format.
  final pulumi.Input<String>? startTime;
  /// (Output)
  /// The state of the maintenance event.
  final pulumi.Input<String>? state;

  /// Creates a new [InstanceMaintenanceEvent].
  /// [endTime] (Output)
  /// [startTime] (Output)
  /// [state] (Output)
  const InstanceMaintenanceEvent({
    this.endTime,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory InstanceMaintenanceEvent.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceEvent(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
