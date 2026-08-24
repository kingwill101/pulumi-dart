// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_project_canonical_deployment_deployment_trigger_metadata.dart';

class GetPagesProjectCanonicalDeploymentDeploymentTrigger {
  /// Additional info about the trigger.
  final pulumi.Input<GetPagesProjectCanonicalDeploymentDeploymentTriggerMetadata> metadata;
  /// What caused the deployment.
  /// Available values: "github:push", "ad*hoc", "deploy*hook".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectCanonicalDeploymentDeploymentTrigger].
  /// [metadata] Additional info about the trigger.
  /// [type] What caused the deployment.
  const GetPagesProjectCanonicalDeploymentDeploymentTrigger({
    required this.metadata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': pulumi.Input.mapInputValue<GetPagesProjectCanonicalDeploymentDeploymentTriggerMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectCanonicalDeploymentDeploymentTrigger.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectCanonicalDeploymentDeploymentTrigger(
      metadata: pulumi.Input.fromValue(GetPagesProjectCanonicalDeploymentDeploymentTriggerMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
