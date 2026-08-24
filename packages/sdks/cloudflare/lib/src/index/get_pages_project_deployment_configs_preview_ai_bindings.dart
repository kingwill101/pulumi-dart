// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewAiBindings {
  final pulumi.Input<String> projectId;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewAiBindings].
  /// [projectId] Required.
  const GetPagesProjectDeploymentConfigsPreviewAiBindings({
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewAiBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewAiBindings(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
