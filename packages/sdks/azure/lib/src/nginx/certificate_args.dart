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
  final pulumi.Input<String>? name;
  /// The ID of the NGINX Deployment that this Certificate should be associated with. Changing this forces a new NGINX Certificate to be created.
  final pulumi.Input<String> nginxDeploymentId;

  /// Creates a new [CertificateArgs].
  /// [certificateVirtualPath] Specify the path to the certificate file of this certificate.
  /// [keyVaultSecretId] Specify the ID of the Key Vault Secret for this certificate.
  /// [keyVirtualPath] Specify the path to the key file of this certificate.
  /// [name] The name which should be used for this NGINX Certificate. Changing this forces a new NGINX Certificate to be created.
  /// [nginxDeploymentId] The ID of the NGINX Deployment that this Certificate should be associated with. Changing this forces a new NGINX Certificate to be created.
  CertificateArgs({
    required pulumi.Output<String> certificateVirtualPath,
    required pulumi.Output<String> keyVaultSecretId,
    required pulumi.Output<String> keyVirtualPath,
    pulumi.Output<String>? name,
    required pulumi.Output<String> nginxDeploymentId,
  }) :
      certificateVirtualPath = pulumi.Input.asInput<String>(certificateVirtualPath),
      keyVaultSecretId = pulumi.Input.asInput<String>(keyVaultSecretId),
      keyVirtualPath = pulumi.Input.asInput<String>(keyVirtualPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      nginxDeploymentId = pulumi.Input.asInput<String>(nginxDeploymentId);

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
      certificateVirtualPath: pulumi.Output.create<String>(map['certificateVirtualPath'] as String),
      keyVaultSecretId: pulumi.Output.create<String>(map['keyVaultSecretId'] as String),
      keyVirtualPath: pulumi.Output.create<String>(map['keyVirtualPath'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nginxDeploymentId: pulumi.Output.create<String>(map['nginxDeploymentId'] as String),
    );
  }
}

