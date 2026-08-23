// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ContainerStateRunning is a running state of a container.
class ContainerStateRunningPatch {
  /// Time at which the container was last (re-)started
  final pulumi.Input<String>? startedAt;

  /// Creates a new [ContainerStateRunningPatch].
  /// [startedAt] Time at which the container was last (re-)started
  const ContainerStateRunningPatch({
    this.startedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startedAt': ?startedAt,
    };
  }

  factory ContainerStateRunningPatch.fromMap(Map<String, dynamic> map) {
    return ContainerStateRunningPatch(
      startedAt: (() { final guardedValue = map['startedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
