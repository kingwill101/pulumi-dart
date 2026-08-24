// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersDeploymentAnnotations {
  /// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
  final pulumi.Input<String> workersMessage;
  /// Operation that triggered the creation of the deployment.
  final pulumi.Input<String> workersTriggeredBy;

  /// Creates a new [GetWorkersDeploymentAnnotations].
  /// [workersMessage] Human-readable message about the deployment. Truncated to 1000 bytes if longer.
  /// [workersTriggeredBy] Operation that triggered the creation of the deployment.
  const GetWorkersDeploymentAnnotations({
    required this.workersMessage,
    required this.workersTriggeredBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workersMessage': workersMessage,
      'workersTriggeredBy': workersTriggeredBy,
    };
  }

  factory GetWorkersDeploymentAnnotations.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentAnnotations(
      workersMessage: pulumi.Input.fromValue(map['workersMessage'] as String),
      workersTriggeredBy: pulumi.Input.fromValue(map['workersTriggeredBy'] as String),
    );
  }
}
