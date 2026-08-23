// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript {
  /// The Secret Manager secret URI of the init script.
  final pulumi.Input<String> gcpSecretManagerSecretUri;
  /// The GCS generation of the init script.
  final pulumi.Input<int> gcsGeneration;
  /// The GCS URI of the init script.
  final pulumi.Input<String> gcsUri;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript].
  /// [gcpSecretManagerSecretUri] The Secret Manager secret URI of the init script.
  /// [gcsGeneration] The GCS generation of the init script.
  /// [gcsUri] The GCS URI of the init script.
  const GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript({
    required this.gcpSecretManagerSecretUri,
    required this.gcsGeneration,
    required this.gcsUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
      'gcsGeneration': gcsGeneration,
      'gcsUri': gcsUri,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript(
      gcpSecretManagerSecretUri: pulumi.Input.fromValue(map['gcpSecretManagerSecretUri'] as String),
      gcsGeneration: pulumi.Input.fromValue(map['gcsGeneration'] as int),
      gcsUri: pulumi.Input.fromValue(map['gcsUri'] as String),
    );
  }
}
