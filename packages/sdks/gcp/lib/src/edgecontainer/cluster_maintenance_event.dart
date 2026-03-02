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
  ClusterMaintenanceEvent({
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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      operation: map['operation'] == null ? null : (map['operation']! as String).input(),
      schedule: map['schedule'] == null ? null : (map['schedule']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      targetVersion: map['targetVersion'] == null ? null : (map['targetVersion']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

