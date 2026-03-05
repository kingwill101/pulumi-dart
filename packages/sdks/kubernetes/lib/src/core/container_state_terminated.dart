// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerStateTerminated is a terminated state of a container.
class ContainerStateTerminated {
  /// Container's ID in the format '&lt;type&gt;://&lt;container_id&gt;'
  final pulumi.Input<String>? containerID;
  /// Exit status from the last termination of the container
  final pulumi.Input<int> exitCode;
  /// Time at which the container last terminated
  final pulumi.Input<String>? finishedAt;
  /// Message regarding the last termination of the container
  final pulumi.Input<String>? message;
  /// (brief) reason from the last termination of the container
  final pulumi.Input<String>? reason;
  /// Signal from the last termination of the container
  final pulumi.Input<int>? signal;
  /// Time at which previous execution of the container started
  final pulumi.Input<String>? startedAt;

  /// Creates a new [ContainerStateTerminated].
  /// [containerID] Container's ID in the format '&lt;type&gt;://&lt;container_id&gt;'
  /// [exitCode] Exit status from the last termination of the container
  /// [finishedAt] Time at which the container last terminated
  /// [message] Message regarding the last termination of the container
  /// [reason] (brief) reason from the last termination of the container
  /// [signal] Signal from the last termination of the container
  /// [startedAt] Time at which previous execution of the container started
  ContainerStateTerminated({
    this.containerID,
    required this.exitCode,
    this.finishedAt,
    this.message,
    this.reason,
    this.signal,
    this.startedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerID': ?containerID,
      'exitCode': exitCode,
      'finishedAt': ?finishedAt,
      'message': ?message,
      'reason': ?reason,
      'signal': ?signal,
      'startedAt': ?startedAt,
    };
  }

  factory ContainerStateTerminated.fromMap(Map<String, dynamic> map) {
    return ContainerStateTerminated(
      containerID: (() { final guardedValue = map['containerID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exitCode: pulumi.Input.fromValue(map['exitCode'] as int),
      finishedAt: (() { final guardedValue = map['finishedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signal: (() { final guardedValue = map['signal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startedAt: (() { final guardedValue = map['startedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

