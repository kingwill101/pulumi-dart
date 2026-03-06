// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_update_label_entry_response_deploymentmanager_v2.dart';

class DeploymentUpdateResponseDeploymentmanagerV2 {
  /// An optional user-provided description of the deployment after the current update has been applied.
  final pulumi.Input<String> description;
  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final pulumi.Input<List<DeploymentUpdateLabelEntryResponseDeploymentmanagerV2>> labels;
  /// URL of the manifest representing the update configuration of this deployment.
  final pulumi.Input<String> manifest;

  /// Creates a new [DeploymentUpdateResponseDeploymentmanagerV2].
  /// [description] An optional user-provided description of the deployment after the current update has been applied.
  /// [labels] Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  /// [manifest] URL of the manifest representing the update configuration of this deployment.
  const DeploymentUpdateResponseDeploymentmanagerV2({
    required this.description,
    required this.labels,
    required this.manifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'labels': pulumi.Input.mapInputValue<List<DeploymentUpdateLabelEntryResponseDeploymentmanagerV2>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<DeploymentUpdateLabelEntryResponseDeploymentmanagerV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifest': manifest,
    };
  }

  factory DeploymentUpdateResponseDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return DeploymentUpdateResponseDeploymentmanagerV2(
      description: pulumi.Input.fromValue(map['description'] as String),
      labels: pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentUpdateLabelEntryResponseDeploymentmanagerV2>(map['labels']!, (value) => DeploymentUpdateLabelEntryResponseDeploymentmanagerV2.fromMap((value as Map).cast<String, dynamic>()))),
      manifest: pulumi.Input.fromValue(map['manifest'] as String),
    );
  }
}

