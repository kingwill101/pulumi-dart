// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterNodeTypeVmSecretCertificate {
  /// The certificate store on the Virtual Machine to which the certificate should be added.
  final pulumi.Input<String> store;
  /// The URL of a certificate that has been uploaded to Key Vault as a secret
  final pulumi.Input<String> url;

  /// Creates a new [ManagedClusterNodeTypeVmSecretCertificate].
  /// [store] The certificate store on the Virtual Machine to which the certificate should be added.
  /// [url] The URL of a certificate that has been uploaded to Key Vault as a secret
  const ManagedClusterNodeTypeVmSecretCertificate({
    required this.store,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'store': store,
      'url': url,
    };
  }

  factory ManagedClusterNodeTypeVmSecretCertificate.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNodeTypeVmSecretCertificate(
      store: pulumi.Input.fromValue(map['store'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

