// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nginx_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_nginx_certificate_certificate_args_doc}
class CertificateArgs {
  /// Specify the path to the certificate file of this certificate.
  final pulumi.Input<String> certificateVirtualPath;
  /// Specify the ID of the Key Vault Secret for this certificate.
  final pulumi.Input<String> keyVaultSecretId;
  /// Specify the path to the key file of this certificate.
  final pulumi.Input<String> keyVirtualPath;
  /// The name which should be used for this NGINX Certificate. Changing this forces a new NGINX Certificate to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the NGINX Deployment that this Certificate should be associated with. Changing this forces a new NGINX Certificate to be created.
  final pulumi.Input<String> nginxDeploymentId;

  /// Creates a new [CertificateArgs].
  /// [certificateVirtualPath] Specify the path to the certificate file of this certificate.
  /// [keyVaultSecretId] Specify the ID of the Key Vault Secret for this certificate.
  /// [keyVirtualPath] Specify the path to the key file of this certificate.
  /// [name] The name which should be used for this NGINX Certificate. Changing this forces a new NGINX Certificate to be created.
  /// [nginxDeploymentId] The ID of the NGINX Deployment that this Certificate should be associated with. Changing this forces a new NGINX Certificate to be created.
  const CertificateArgs({
    required this.certificateVirtualPath,
    required this.keyVaultSecretId,
    required this.keyVirtualPath,
    this.name,
    required this.nginxDeploymentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVirtualPath': certificateVirtualPath,
      'keyVaultSecretId': keyVaultSecretId,
      'keyVirtualPath': keyVirtualPath,
      'name': ?name,
      'nginxDeploymentId': nginxDeploymentId,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateVirtualPath: pulumi.Input.fromValue(map['certificateVirtualPath'] as String),
      keyVaultSecretId: pulumi.Input.fromValue(map['keyVaultSecretId'] as String),
      keyVirtualPath: pulumi.Input.fromValue(map['keyVirtualPath'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nginxDeploymentId: pulumi.Input.fromValue(map['nginxDeploymentId'] as String),
    );
  }
}
