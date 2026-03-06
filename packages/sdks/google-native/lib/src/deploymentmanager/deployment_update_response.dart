// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_response.dart';
import 'deployment_update_label_entry_response.dart';

class DeploymentUpdateResponse {
  /// The user-provided default credential to use when deploying this preview.
  final pulumi.Input<CredentialResponse> credential;
  /// An optional user-provided description of the deployment after the current update has been applied.
  final pulumi.Input<String> description;
  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final pulumi.Input<List<DeploymentUpdateLabelEntryResponse>> labels;
  /// URL of the manifest representing the update configuration of this deployment.
  final pulumi.Input<String> manifest;

  /// Creates a new [DeploymentUpdateResponse].
  /// [credential] The user-provided default credential to use when deploying this preview.
  /// [description] An optional user-provided description of the deployment after the current update has been applied.
  /// [labels] Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  /// [manifest] URL of the manifest representing the update configuration of this deployment.
  const DeploymentUpdateResponse({
    required this.credential,
    required this.description,
    required this.labels,
    required this.manifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': pulumi.Input.mapInputValue<CredentialResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': description,
      'labels': pulumi.Input.mapInputValue<List<DeploymentUpdateLabelEntryResponse>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<DeploymentUpdateLabelEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifest': manifest,
    };
  }

  factory DeploymentUpdateResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentUpdateResponse(
      credential: pulumi.Input.fromValue(CredentialResponse.fromMap((map['credential']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      labels: pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentUpdateLabelEntryResponse>(map['labels']!, (value) => DeploymentUpdateLabelEntryResponse.fromMap((value as Map).cast<String, dynamic>()))),
      manifest: pulumi.Input.fromValue(map['manifest'] as String),
    );
  }
}

