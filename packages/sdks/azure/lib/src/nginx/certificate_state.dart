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
    pulumi.Output<String>? certificateVirtualPath,
    pulumi.Output<String>? keyVaultSecretId,
    pulumi.Output<String>? keyVirtualPath,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nginxDeploymentId,
  }) :
      certificateVirtualPath = pulumi.Input.asOptionalInput<String>(certificateVirtualPath),
      keyVaultSecretId = pulumi.Input.asOptionalInput<String>(keyVaultSecretId),
      keyVirtualPath = pulumi.Input.asOptionalInput<String>(keyVirtualPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      nginxDeploymentId = pulumi.Input.asOptionalInput<String>(nginxDeploymentId);

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
      certificateVirtualPath: map['certificateVirtualPath'] == null ? null : pulumi.Output.create<String>(map['certificateVirtualPath'] as String),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['keyVaultSecretId'] as String),
      keyVirtualPath: map['keyVirtualPath'] == null ? null : pulumi.Output.create<String>(map['keyVirtualPath'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nginxDeploymentId: map['nginxDeploymentId'] == null ? null : pulumi.Output.create<String>(map['nginxDeploymentId'] as String),
    );
  }
}

