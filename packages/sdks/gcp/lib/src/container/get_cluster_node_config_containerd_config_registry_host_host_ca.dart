// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigContainerdConfigRegistryHostHostCa {
  /// URI for the Secret Manager secret that hosts the certificate.
  final pulumi.Input<String> gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodeConfigContainerdConfigRegistryHostHostCa].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the certificate.
  const GetClusterNodeConfigContainerdConfigRegistryHostHostCa({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHostHostCa.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHostHostCa(
      gcpSecretManagerSecretUri: pulumi.Input.fromValue(map['gcpSecretManagerSecretUri'] as String),
    );
  }
}
