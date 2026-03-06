// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenanceEvent {
  /// (Output)
  /// The time when the maintenance event request was created.
  final pulumi.Input<String>? createTime;
  /// (Output)
  /// The time when the maintenance event ended, either successfully or not. If
  /// the maintenance event is split into multiple maintenance windows,
  /// end_time is only updated when the whole flow ends.
  final pulumi.Input<String>? endTime;
  /// (Output)
  /// The operation for running the maintenance event. Specified in the format
  /// projects/*/locations/*/operations/*. If the maintenance event is split
  /// into multiple operations (e.g. due to maintenance windows), the latest
  /// one is recorded.
  final pulumi.Input<String>? operation;
  /// (Output)
  /// The schedule of the maintenance event.
  final pulumi.Input<String>? schedule;
  /// (Output)
  /// The time when the maintenance event started.
  final pulumi.Input<String>? startTime;
  /// (Output)
  /// Indicates the maintenance event state.
  final pulumi.Input<String>? state;
  /// The target cluster version. For example: "1.5.0".
  final pulumi.Input<String>? targetVersion;
  /// (Output)
  /// Indicates the maintenance event type.
  final pulumi.Input<String>? type;
  /// (Output)
  /// The time when the maintenance event message was updated.
  final pulumi.Input<String>? updateTime;
  /// (Output)
  /// UUID of the maintenance event.
  final pulumi.Input<String>? uuid;

  /// Creates a new [ClusterMaintenanceEvent].
  /// [createTime] (Output)
  /// [endTime] (Output)
  /// [operation] (Output)
  /// [schedule] (Output)
  /// [startTime] (Output)
  /// [state] (Output)
  /// [targetVersion] The target cluster version. For example: "1.5.0".
  /// [type] (Output)
  /// [updateTime] (Output)
  /// [uuid] (Output)
  const ClusterMaintenanceEvent({
    this.createTime,
    this.endTime,
    this.operation,
    this.schedule,
    this.startTime,
    this.state,
    this.targetVersion,
    this.type,
    this.updateTime,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'endTime': ?endTime,
      'operation': ?operation,
      'schedule': ?schedule,
      'startTime': ?startTime,
      'state': ?state,
      'targetVersion': ?targetVersion,
      'type': ?type,
      'updateTime': ?updateTime,
      'uuid': ?uuid,
    };
  }

  factory ClusterMaintenanceEvent.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenanceEvent(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVersion: (() { final guardedValue = map['targetVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

