// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript {
  /// The Google Cloud Secret Manager secret version URI for storing the init script. Format: `projects/PROJECT_ID/secrets/SECRET_NAME/versions/VERSION`. The service account on the nodepool must have access to the secret version. Conflicts with `gcsUri`.
  final pulumi.Input<String>? gcpSecretManagerSecretUri;
  /// The generation of the init script in Google Cloud Storage. If `gcsUri` is used, `gcsGeneration` is required.
  final pulumi.Input<int>? gcsGeneration;
  /// The Google Cloud Storage URI for storing the init script. Format: `gs://BUCKET_NAME/OBJECT_NAME`. The service account on the nodepool must have read access to the object. Conflicts with `gcpSecretManagerSecretUri`. If `gcsUri` is used, `gcsGeneration` is required.
  final pulumi.Input<String>? gcsUri;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript].
  /// [gcpSecretManagerSecretUri] The Google Cloud Secret Manager secret version URI for storing the init script. Format: `projects/PROJECT_ID/secrets/SECRET_NAME/versions/VERSION`. The service account on the nodepool must have access to the secret version. Conflicts with `gcsUri`.
  /// [gcsGeneration] The generation of the init script in Google Cloud Storage. If `gcsUri` is used, `gcsGeneration` is required.
  /// [gcsUri] The Google Cloud Storage URI for storing the init script. Format: `gs://BUCKET_NAME/OBJECT_NAME`. The service account on the nodepool must have read access to the object. Conflicts with `gcpSecretManagerSecretUri`. If `gcsUri` is used, `gcsGeneration` is required.
  const ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript({
    this.gcpSecretManagerSecretUri,
    this.gcsGeneration,
    this.gcsUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
      'gcsGeneration': ?gcsGeneration,
      'gcsUri': ?gcsUri,
    };
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript(
      gcpSecretManagerSecretUri: (() { final guardedValue = map['gcpSecretManagerSecretUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsGeneration: (() { final guardedValue = map['gcsGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gcsUri: (() { final guardedValue = map['gcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
