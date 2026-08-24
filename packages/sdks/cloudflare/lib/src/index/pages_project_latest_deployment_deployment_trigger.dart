// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_latest_deployment_deployment_trigger_metadata.dart';

class PagesProjectLatestDeploymentDeploymentTrigger {
  /// Additional info about the trigger.
  final pulumi.Input<PagesProjectLatestDeploymentDeploymentTriggerMetadata?>? metadata;
  /// What caused the deployment.
  /// Available values: "github:push", "ad*hoc", "deploy*hook".
  final pulumi.Input<String?>? type;

  /// Creates a new [PagesProjectLatestDeploymentDeploymentTrigger].
  /// [metadata] Additional info about the trigger.
  /// [type] What caused the deployment.
  const PagesProjectLatestDeploymentDeploymentTrigger({
    this.metadata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<PagesProjectLatestDeploymentDeploymentTriggerMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PagesProjectLatestDeploymentDeploymentTrigger.fromMap(Map<String, dynamic> map) {
    return PagesProjectLatestDeploymentDeploymentTrigger(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectLatestDeploymentDeploymentTriggerMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
