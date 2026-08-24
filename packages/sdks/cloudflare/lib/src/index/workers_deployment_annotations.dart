// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkersDeploymentAnnotations {
  /// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
  final pulumi.Input<String?>? workersMessage;
  /// Operation that triggered the creation of the deployment.
  final pulumi.Input<String?>? workersTriggeredBy;

  /// Creates a new [WorkersDeploymentAnnotations].
  /// [workersMessage] Human-readable message about the deployment. Truncated to 1000 bytes if longer.
  /// [workersTriggeredBy] Operation that triggered the creation of the deployment.
  const WorkersDeploymentAnnotations({
    this.workersMessage,
    this.workersTriggeredBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workersMessage': ?workersMessage,
      'workersTriggeredBy': ?workersTriggeredBy,
    };
  }

  factory WorkersDeploymentAnnotations.fromMap(Map<String, dynamic> map) {
    return WorkersDeploymentAnnotations(
      workersMessage: (() { final guardedValue = map['workersMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workersTriggeredBy: (() { final guardedValue = map['workersTriggeredBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
