// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersDeploymentsResultDeploymentAnnotations {
  /// Human-readable message about the deployment. Truncated to 1000 bytes if longer.
  final pulumi.Input<String> workersMessage;
  /// Operation that triggered the creation of the deployment.
  final pulumi.Input<String> workersTriggeredBy;

  /// Creates a new [GetWorkersDeploymentsResultDeploymentAnnotations].
  /// [workersMessage] Human-readable message about the deployment. Truncated to 1000 bytes if longer.
  /// [workersTriggeredBy] Operation that triggered the creation of the deployment.
  const GetWorkersDeploymentsResultDeploymentAnnotations({
    required this.workersMessage,
    required this.workersTriggeredBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workersMessage': workersMessage,
      'workersTriggeredBy': workersTriggeredBy,
    };
  }

  factory GetWorkersDeploymentsResultDeploymentAnnotations.fromMap(Map<String, dynamic> map) {
    return GetWorkersDeploymentsResultDeploymentAnnotations(
      workersMessage: pulumi.Input.fromValue(map['workersMessage'] as String),
      workersTriggeredBy: pulumi.Input.fromValue(map['workersTriggeredBy'] as String),
    );
  }
}
