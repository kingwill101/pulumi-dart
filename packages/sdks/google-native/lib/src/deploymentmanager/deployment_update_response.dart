// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_response.dart';
import 'deployment_update_label_entry_response.dart';

class DeploymentUpdateResponse {
  /// The user-provided default credential to use when deploying this preview.
  final CredentialResponse credential;
  /// An optional user-provided description of the deployment after the current update has been applied.
  final String description;
  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  final List<DeploymentUpdateLabelEntryResponse> labels;
  /// URL of the manifest representing the update configuration of this deployment.
  final String manifest;

  /// Creates a new [DeploymentUpdateResponse].
  /// [credential] The user-provided default credential to use when deploying this preview.
  /// [description] An optional user-provided description of the deployment after the current update has been applied.
  /// [labels] Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  /// [manifest] URL of the manifest representing the update configuration of this deployment.
  DeploymentUpdateResponse({
    required this.credential,
    required this.description,
    required this.labels,
    required this.manifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credential': credential.toMap(),
      'description': description,
      'labels': pulumi.Input.encodeList<DeploymentUpdateLabelEntryResponse, Map<String, dynamic>>(labels, (value) => value.toMap()),
      'manifest': manifest,
    };
  }

  factory DeploymentUpdateResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentUpdateResponse(
      credential: CredentialResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      labels: pulumi.Input.decodeList<DeploymentUpdateLabelEntryResponse>(map['labels'], (value) => DeploymentUpdateLabelEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      manifest: map['manifest'] as String,
    );
  }
}

