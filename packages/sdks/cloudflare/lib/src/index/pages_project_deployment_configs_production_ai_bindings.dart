// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionAiBindings {
  final pulumi.Input<String> projectId;

  /// Creates a new [PagesProjectDeploymentConfigsProductionAiBindings].
  /// [projectId] Required.
  const PagesProjectDeploymentConfigsProductionAiBindings({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
    };
  }

  factory PagesProjectDeploymentConfigsProductionAiBindings.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionAiBindings(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
