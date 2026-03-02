// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final pulumi.Input<String>? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the client certificate.
  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null ? null : (map['gcpSecretManagerSecretUri']! as String).input(),
    );
  }
}

