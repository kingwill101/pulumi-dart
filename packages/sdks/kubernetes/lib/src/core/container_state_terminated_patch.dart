// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerStateTerminated is a terminated state of a container.
class ContainerStateTerminatedPatch {
  /// Container's ID in the format '<type>://<container_id>'
  final pulumi.Input<String>? containerID;
  /// Exit status from the last termination of the container
  final pulumi.Input<int>? exitCode;
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

  /// Creates a new [ContainerStateTerminatedPatch].
  /// [containerID] Container's ID in the format '<type>://<container_id>'
  /// [exitCode] Exit status from the last termination of the container
  /// [finishedAt] Time at which the container last terminated
  /// [message] Message regarding the last termination of the container
  /// [reason] (brief) reason from the last termination of the container
  /// [signal] Signal from the last termination of the container
  /// [startedAt] Time at which previous execution of the container started
  ContainerStateTerminatedPatch({
    this.containerID,
    this.exitCode,
    this.finishedAt,
    this.message,
    this.reason,
    this.signal,
    this.startedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerID': ?containerID,
      'exitCode': ?exitCode,
      'finishedAt': ?finishedAt,
      'message': ?message,
      'reason': ?reason,
      'signal': ?signal,
      'startedAt': ?startedAt,
    };
  }

  factory ContainerStateTerminatedPatch.fromMap(Map<String, dynamic> map) {
    return ContainerStateTerminatedPatch(
      containerID: map['containerID'] == null ? null : (map['containerID']! as String).input(),
      exitCode: map['exitCode'] == null ? null : (map['exitCode']! as int).input(),
      finishedAt: map['finishedAt'] == null ? null : (map['finishedAt']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
      signal: map['signal'] == null ? null : (map['signal']! as int).input(),
      startedAt: map['startedAt'] == null ? null : (map['startedAt']! as String).input(),
    );
  }
}

