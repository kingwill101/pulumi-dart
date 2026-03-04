// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final pulumi.Input<String> gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the client certificate.
  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert(
      gcpSecretManagerSecretUri: pulumi.Input.fromValue(
        map['gcpSecretManagerSecretUri'] as String,
      ),
    );
  }
}
