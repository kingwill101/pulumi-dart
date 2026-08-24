// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_projects_result_latest_deployment_deployment_trigger_metadata.dart';

class GetPagesProjectsResultLatestDeploymentDeploymentTrigger {
  /// Additional info about the trigger.
  final pulumi.Input<GetPagesProjectsResultLatestDeploymentDeploymentTriggerMetadata> metadata;
  /// What caused the deployment.
  /// Available values: "github:push", "ad*hoc", "deploy*hook".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectsResultLatestDeploymentDeploymentTrigger].
  /// [metadata] Additional info about the trigger.
  /// [type] What caused the deployment.
  const GetPagesProjectsResultLatestDeploymentDeploymentTrigger({
    required this.metadata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': pulumi.Input.mapInputValue<GetPagesProjectsResultLatestDeploymentDeploymentTriggerMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectsResultLatestDeploymentDeploymentTrigger.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultLatestDeploymentDeploymentTrigger(
      metadata: pulumi.Input.fromValue(GetPagesProjectsResultLatestDeploymentDeploymentTriggerMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
