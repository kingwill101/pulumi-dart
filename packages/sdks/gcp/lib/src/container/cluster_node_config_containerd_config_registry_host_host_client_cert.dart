// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final pulumi.Input<String?>? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHostHostClientCert].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the client certificate.
  const ClusterNodeConfigContainerdConfigRegistryHostHostClientCert({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory ClusterNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigRegistryHostHostClientCert(
      gcpSecretManagerSecretUri: (() { final guardedValue = map['gcpSecretManagerSecretUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
