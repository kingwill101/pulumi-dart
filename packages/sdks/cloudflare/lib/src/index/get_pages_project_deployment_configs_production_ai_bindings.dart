// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionAiBindings {
  final pulumi.Input<String> projectId;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionAiBindings].
  /// [projectId] Required.
  const GetPagesProjectDeploymentConfigsProductionAiBindings({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionAiBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionAiBindings(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
