// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A container event.
class ContainerEventResponse {
  /// The count of the event.
  final pulumi.Input<int>? count;
  /// Date/time of the first event.
  final pulumi.Input<String>? firstTimestamp;
  /// Date/time of the last event.
  final pulumi.Input<String>? lastTimestamp;
  /// The event message
  final pulumi.Input<String>? message;
  /// The name of the container event.
  final pulumi.Input<String>? name;
  /// The event type.
  final pulumi.Input<String>? type;

  /// Creates a new [ContainerEventResponse].
  /// [count] The count of the event.
  /// [firstTimestamp] Date/time of the first event.
  /// [lastTimestamp] Date/time of the last event.
  /// [message] The event message
  /// [name] The name of the container event.
  /// [type] The event type.
  ContainerEventResponse({
    this.count,
    this.firstTimestamp,
    this.lastTimestamp,
    this.message,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'firstTimestamp': ?firstTimestamp,
      'lastTimestamp': ?lastTimestamp,
      'message': ?message,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ContainerEventResponse.fromMap(Map<String, dynamic> map) {
    return ContainerEventResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      firstTimestamp: (() { final guardedValue = map['firstTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTimestamp: (() { final guardedValue = map['lastTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

