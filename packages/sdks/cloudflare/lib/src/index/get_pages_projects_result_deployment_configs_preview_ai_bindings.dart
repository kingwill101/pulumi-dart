// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewAiBindings {
  final pulumi.Input<String> projectId;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewAiBindings].
  /// [projectId] Required.
  const GetPagesProjectsResultDeploymentConfigsPreviewAiBindings({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewAiBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewAiBindings(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
