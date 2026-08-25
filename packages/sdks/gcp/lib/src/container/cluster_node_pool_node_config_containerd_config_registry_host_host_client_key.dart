// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final pulumi.Input<String?>? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  const ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: (() { final guardedValue = map['gcpSecretManagerSecretUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
