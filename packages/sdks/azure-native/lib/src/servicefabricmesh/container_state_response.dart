// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container state.
class ContainerStateResponse {
  /// Human-readable status of this state.
  final pulumi.Input<String?>? detailStatus;
  /// The container exit code.
  final pulumi.Input<String?>? exitCode;
  /// Date/time when the container state finished.
  final pulumi.Input<String?>? finishTime;
  /// Date/time when the container state started.
  final pulumi.Input<String?>? startTime;
  /// The state of this container
  final pulumi.Input<String?>? state;

  /// Creates a new [ContainerStateResponse].
  /// [detailStatus] Human-readable status of this state.
  /// [exitCode] The container exit code.
  /// [finishTime] Date/time when the container state finished.
  /// [startTime] Date/time when the container state started.
  /// [state] The state of this container
  const ContainerStateResponse({
    this.detailStatus,
    this.exitCode,
    this.finishTime,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailStatus': ?detailStatus,
      'exitCode': ?exitCode,
      'finishTime': ?finishTime,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory ContainerStateResponse.fromMap(Map<String, dynamic> map) {
    return ContainerStateResponse(
      detailStatus: (() { final guardedValue = map['detailStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exitCode: (() { final guardedValue = map['exitCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finishTime: (() { final guardedValue = map['finishTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
