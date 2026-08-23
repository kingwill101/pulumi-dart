// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerStateWaiting is a waiting state of a container.
class ContainerStateWaitingPatch {
  /// Message regarding why the container is not yet running.
  final pulumi.Input<String>? message;
  /// (brief) reason the container is not yet running.
  final pulumi.Input<String>? reason;

  /// Creates a new [ContainerStateWaitingPatch].
  /// [message] Message regarding why the container is not yet running.
  /// [reason] (brief) reason the container is not yet running.
  const ContainerStateWaitingPatch({
    this.message,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'reason': ?reason,
    };
  }

  factory ContainerStateWaitingPatch.fromMap(Map<String, dynamic> map) {
    return ContainerStateWaitingPatch(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
