// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript {
  /// The Secret Manager secret URI of the init script.
  final pulumi.Input<String>? gcpSecretManagerSecretUri;
  /// The GCS generation of the init script.
  final pulumi.Input<int>? gcsGeneration;
  /// The GCS URI of the init script.
  final pulumi.Input<String>? gcsUri;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript].
  /// [gcpSecretManagerSecretUri] The Secret Manager secret URI of the init script.
  /// [gcsGeneration] The GCS generation of the init script.
  /// [gcsUri] The GCS URI of the init script.
  const NodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript({
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

  factory NodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript(
      gcpSecretManagerSecretUri: (() { final guardedValue = map['gcpSecretManagerSecretUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcsGeneration: (() { final guardedValue = map['gcsGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gcsUri: (() { final guardedValue = map['gcsUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
