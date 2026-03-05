// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The path to the certificate file of the certificate.
  final String certificateVirtualPath;

  /// The error code of the certificate error, if any.
  final String errorCode;

  /// The error message of the certificate error, if any.
  final String errorMessage;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The date/time the certificate was created in Azure Key Vault.
  final String keyVaultSecretCreationDate;

  /// The ID of the Key Vault Secret for the certificate.
  final String keyVaultSecretId;

  /// The version of the certificate.
  final String keyVaultSecretVersion;

  /// The path to the key file of the certificate.
  final String keyVirtualPath;
  final String name;
  final String nginxDeploymentId;

  /// The SHA-1 thumbprint of the certificate.
  final String sha1Thumbprint;

  /// Creates a new [GetCertificateResult].
  /// [certificateVirtualPath] The path to the certificate file of the certificate.
  /// [errorCode] The error code of the certificate error, if any.
  /// [errorMessage] The error message of the certificate error, if any.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultSecretCreationDate] The date/time the certificate was created in Azure Key Vault.
  /// [keyVaultSecretId] The ID of the Key Vault Secret for the certificate.
  /// [keyVaultSecretVersion] The version of the certificate.
  /// [keyVirtualPath] The path to the key file of the certificate.
  /// [name] Required.
  /// [nginxDeploymentId] Required.
  /// [sha1Thumbprint] The SHA-1 thumbprint of the certificate.
  GetCertificateResult({
    required this.certificateVirtualPath,
    required this.errorCode,
    required this.errorMessage,
    required this.id,
    required this.keyVaultSecretCreationDate,
    required this.keyVaultSecretId,
    required this.keyVaultSecretVersion,
    required this.keyVirtualPath,
    required this.name,
    required this.nginxDeploymentId,
    required this.sha1Thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVirtualPath': certificateVirtualPath,
      'errorCode': errorCode,
      'errorMessage': errorMessage,
      'id': id,
      'keyVaultSecretCreationDate': keyVaultSecretCreationDate,
      'keyVaultSecretId': keyVaultSecretId,
      'keyVaultSecretVersion': keyVaultSecretVersion,
      'keyVirtualPath': keyVirtualPath,
      'name': name,
      'nginxDeploymentId': nginxDeploymentId,
      'sha1Thumbprint': sha1Thumbprint,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificateVirtualPath: map['certificateVirtualPath'] as String,
      errorCode: map['errorCode'] as String,
      errorMessage: map['errorMessage'] as String,
      id: map['id'] as String,
      keyVaultSecretCreationDate: map['keyVaultSecretCreationDate'] as String,
      keyVaultSecretId: map['keyVaultSecretId'] as String,
      keyVaultSecretVersion: map['keyVaultSecretVersion'] as String,
      keyVirtualPath: map['keyVirtualPath'] as String,
      name: map['name'] as String,
      nginxDeploymentId: map['nginxDeploymentId'] as String,
      sha1Thumbprint: map['sha1Thumbprint'] as String,
    );
  }
}
