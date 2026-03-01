// ignore_for_file: unused_element, unnecessary_cast


/// ContainerStateTerminated is a terminated state of a container.
class ContainerStateTerminated {
  /// Container's ID in the format '<type>://<container_id>'
  final String? containerID;
  /// Exit status from the last termination of the container
  final int exitCode;
  /// Time at which the container last terminated
  final String? finishedAt;
  /// Message regarding the last termination of the container
  final String? message;
  /// (brief) reason from the last termination of the container
  final String? reason;
  /// Signal from the last termination of the container
  final int? signal;
  /// Time at which previous execution of the container started
  final String? startedAt;

  /// Creates a new [ContainerStateTerminated].
  /// [containerID] Container's ID in the format '<type>://<container_id>'
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
      containerID: map['containerID'] == null ? null : map['containerID'] as String,
      exitCode: map['exitCode'] as int,
      finishedAt: map['finishedAt'] == null ? null : map['finishedAt'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      signal: map['signal'] == null ? null : map['signal'] as int,
      startedAt: map['startedAt'] == null ? null : map['startedAt'] as String,
    );
  }
}

