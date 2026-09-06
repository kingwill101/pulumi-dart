// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_event_response.dart';
import 'container_state_response.dart';

/// Runtime information of a container instance.
class ContainerInstanceViewResponse {
  /// Current container instance state.
  final pulumi.Input<ContainerStateResponse?>? currentState;
  /// The events of this container instance.
  final pulumi.Input<List<ContainerEventResponse>?>? events;
  /// Previous container instance state.
  final pulumi.Input<ContainerStateResponse?>? previousState;
  /// The number of times the container has been restarted.
  final pulumi.Input<int?>? restartCount;

  /// Creates a new [ContainerInstanceViewResponse].
  /// [currentState] Current container instance state.
  /// [events] The events of this container instance.
  /// [previousState] Previous container instance state.
  /// [restartCount] The number of times the container has been restarted.
  const ContainerInstanceViewResponse({
    this.currentState,
    this.events,
    this.previousState,
    this.restartCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentState': ?pulumi.Input.mapOptionalInputValue<ContainerStateResponse, Map<String, dynamic>>(currentState, (value) => value.toMap()),
      'events': ?pulumi.Input.mapOptionalInputValue<List<ContainerEventResponse>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<ContainerEventResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'previousState': ?pulumi.Input.mapOptionalInputValue<ContainerStateResponse, Map<String, dynamic>>(previousState, (value) => value.toMap()),
      'restartCount': ?restartCount,
    };
  }

  factory ContainerInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return ContainerInstanceViewResponse(
      currentState: (() { final guardedValue = map['currentState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerEventResponse>(guardedValue, (value) => ContainerEventResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      previousState: (() { final guardedValue = map['previousState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      restartCount: (() { final guardedValue = map['restartCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
