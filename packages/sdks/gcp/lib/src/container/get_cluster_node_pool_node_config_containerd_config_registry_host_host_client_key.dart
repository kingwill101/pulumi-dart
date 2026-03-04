// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final pulumi.Input<String> gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: pulumi.Input.fromValue(
        map['gcpSecretManagerSecretUri'] as String,
      ),
    );
  }
}
