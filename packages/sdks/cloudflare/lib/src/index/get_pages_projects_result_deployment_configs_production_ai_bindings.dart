// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionAiBindings {
  final pulumi.Input<String> projectId;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionAiBindings].
  /// [projectId] Required.
  const GetPagesProjectsResultDeploymentConfigsProductionAiBindings({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionAiBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionAiBindings(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
