// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final pulumi.Input<String>? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null ? null : (map['gcpSecretManagerSecretUri']! as String).input(),
    );
  }
}

