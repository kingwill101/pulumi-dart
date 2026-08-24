// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pages_project_canonical_deployment_deployment_trigger_metadata.dart';

class PagesProjectCanonicalDeploymentDeploymentTrigger {
  /// Additional info about the trigger.
  final pulumi.Input<PagesProjectCanonicalDeploymentDeploymentTriggerMetadata?>? metadata;
  /// What caused the deployment.
  /// Available values: "github:push", "ad*hoc", "deploy*hook".
  final pulumi.Input<String?>? type;

  /// Creates a new [PagesProjectCanonicalDeploymentDeploymentTrigger].
  /// [metadata] Additional info about the trigger.
  /// [type] What caused the deployment.
  const PagesProjectCanonicalDeploymentDeploymentTrigger({
    this.metadata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<PagesProjectCanonicalDeploymentDeploymentTriggerMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory PagesProjectCanonicalDeploymentDeploymentTrigger.fromMap(Map<String, dynamic> map) {
    return PagesProjectCanonicalDeploymentDeploymentTrigger(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PagesProjectCanonicalDeploymentDeploymentTriggerMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
