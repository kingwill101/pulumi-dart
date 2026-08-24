// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_project_latest_deployment_deployment_trigger_metadata.dart';

class GetPagesProjectLatestDeploymentDeploymentTrigger {
  /// Additional info about the trigger.
  final pulumi.Input<GetPagesProjectLatestDeploymentDeploymentTriggerMetadata> metadata;
  /// What caused the deployment.
  /// Available values: "github:push", "ad*hoc", "deploy*hook".
  final pulumi.Input<String> type;

  /// Creates a new [GetPagesProjectLatestDeploymentDeploymentTrigger].
  /// [metadata] Additional info about the trigger.
  /// [type] What caused the deployment.
  const GetPagesProjectLatestDeploymentDeploymentTrigger({
    required this.metadata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': pulumi.Input.mapInputValue<GetPagesProjectLatestDeploymentDeploymentTriggerMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetPagesProjectLatestDeploymentDeploymentTrigger.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectLatestDeploymentDeploymentTrigger(
      metadata: pulumi.Input.fromValue(GetPagesProjectLatestDeploymentDeploymentTriggerMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
