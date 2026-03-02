// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerStateWaiting is a waiting state of a container.
class ContainerStateWaiting {
  /// Message regarding why the container is not yet running.
  final pulumi.Input<String>? message;
  /// (brief) reason the container is not yet running.
  final pulumi.Input<String>? reason;

  /// Creates a new [ContainerStateWaiting].
  /// [message] Message regarding why the container is not yet running.
  /// [reason] (brief) reason the container is not yet running.
  ContainerStateWaiting({
    this.message,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'reason': ?reason,
    };
  }

  factory ContainerStateWaiting.fromMap(Map<String, dynamic> map) {
    return ContainerStateWaiting(
      message: map['message'] == null ? null : (map['message']! as String).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
    );
  }
}

