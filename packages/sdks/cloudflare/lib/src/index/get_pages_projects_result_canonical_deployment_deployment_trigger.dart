// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_canonical_deployment_deployment_trigger_metadata.dart';

class GetPagesProjectsResultCanonicalDeploymentDeploymentTrigger {
  /// Additional info about the trigger.
  final pulumi.Input<GetPagesProjectsResultCanonicalDeploymentDeploymentTriggerMetadata> metadata;
  /// What caused the deployment.
  /// Available values: "github:push", "ad*hoc", "deploy*hook".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectsResultCanonicalDeploymentDeploymentTrigger].
  /// [metadata] Additional info about the trigger.
  /// [type] What caused the deployment.
  const GetPagesProjectsResultCanonicalDeploymentDeploymentTrigger({
    required this.metadata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': pulumi.Input.mapInputValue<GetPagesProjectsResultCanonicalDeploymentDeploymentTriggerMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectsResultCanonicalDeploymentDeploymentTrigger.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultCanonicalDeploymentDeploymentTrigger(
      metadata: pulumi.Input.fromValue(GetPagesProjectsResultCanonicalDeploymentDeploymentTriggerMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
