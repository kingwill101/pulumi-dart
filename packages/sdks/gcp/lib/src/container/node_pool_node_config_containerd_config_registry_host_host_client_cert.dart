// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final pulumi.Input<String>? gcpSecretManagerSecretUri;

  /// Creates a new [NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the client certificate.
  NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigRegistryHostHostClientCert(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null ? null : (map['gcpSecretManagerSecretUri']! as String).input(),
    );
  }
}

