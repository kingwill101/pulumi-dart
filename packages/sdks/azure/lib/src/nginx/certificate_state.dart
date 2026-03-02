// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Specify the path to the certificate file of this certificate.
  final pulumi.Input<String>? certificateVirtualPath;
  /// Specify the ID of the Key Vault Secret for this certificate.
  final pulumi.Input<String>? keyVaultSecretId;
  /// Specify the path to the key file of this certificate.
  final pulumi.Input<String>? keyVirtualPath;
  /// The name which should be used for this NGINX Certificate. Changing this forces a new NGINX Certificate to be created.
  final pulumi.Input<String>? name;
  /// The ID of the NGINX Deployment that this Certificate should be associated with. Changing this forces a new NGINX Certificate to be created.
  final pulumi.Input<String>? nginxDeploymentId;

  /// Creates a new [CertificateState].
  /// [certificateVirtualPath] Specify the path to the certificate file of this certificate.
  /// [keyVaultSecretId] Specify the ID of the Key Vault Secret for this certificate.
  /// [keyVirtualPath] Specify the path to the key file of this certificate.
  /// [name] The name which should be used for this NGINX Certificate. Changing this forces a new NGINX Certificate to be created.
  /// [nginxDeploymentId] The ID of the NGINX Deployment that this Certificate should be associated with. Changing this forces a new NGINX Certificate to be created.
  CertificateState({
    this.certificateVirtualPath,
    this.keyVaultSecretId,
    this.keyVirtualPath,
    this.name,
    this.nginxDeploymentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVirtualPath': ?certificateVirtualPath,
      'keyVaultSecretId': ?keyVaultSecretId,
      'keyVirtualPath': ?keyVirtualPath,
      'name': ?name,
      'nginxDeploymentId': ?nginxDeploymentId,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      certificateVirtualPath: map['certificateVirtualPath'] == null ? null : (map['certificateVirtualPath'] as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId'] as String).input(),
      keyVirtualPath: map['keyVirtualPath'] == null ? null : (map['keyVirtualPath'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nginxDeploymentId: map['nginxDeploymentId'] == null ? null : (map['nginxDeploymentId'] as String).input(),
    );
  }
}

