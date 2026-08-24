// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewAiBindings {
  final pulumi.Input<String> projectId;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewAiBindings].
  /// [projectId] Required.
  const PagesProjectDeploymentConfigsPreviewAiBindings({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewAiBindings.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewAiBindings(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
