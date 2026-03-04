// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_update_label_entry_response_deploymentmanager_v2beta.dart';

class DeploymentUpdateResponseDeploymentmanagerV2beta {
  /// An optional user-provided description of the deployment after the current update has been applied.
  final pulumi.Input<String> description;

  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final pulumi.Input<
    List<DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta>
  >
  labels;

  /// URL of the manifest representing the update configuration of this deployment.
  final pulumi.Input<String> manifest;

  /// Creates a new [DeploymentUpdateResponseDeploymentmanagerV2beta].
  /// [description] An optional user-provided description of the deployment after the current update has been applied.
  /// [labels] Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  /// [manifest] URL of the manifest representing the update configuration of this deployment.
  DeploymentUpdateResponseDeploymentmanagerV2beta({
    required this.description,
    required this.labels,
    required this.manifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'labels':
          pulumi.Input.mapInputValue<
            List<DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<
                  DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'manifest': manifest,
    };
  }

  factory DeploymentUpdateResponseDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentUpdateResponseDeploymentmanagerV2beta(
      description: pulumi.Input.fromValue(map['description'] as String),
      labels: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta
        >(
          map['labels']!,
          (value) =>
              DeploymentUpdateLabelEntryResponseDeploymentmanagerV2beta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      manifest: pulumi.Input.fromValue(map['manifest'] as String),
    );
  }
}
