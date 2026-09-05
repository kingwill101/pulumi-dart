// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The path to the certificate file of the certificate.
  final String? certificateVirtualPath;
  /// The error code of the certificate error, if any.
  final String? errorCode;
  /// The error message of the certificate error, if any.
  final String? errorMessage;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The date/time the certificate was created in Azure Key Vault.
  final String? keyVaultSecretCreationDate;
  /// The ID of the Key Vault Secret for the certificate.
  final String? keyVaultSecretId;
  /// The version of the certificate.
  final String? keyVaultSecretVersion;
  /// The path to the key file of the certificate.
  final String? keyVirtualPath;
  final String? name;
  final String? nginxDeploymentId;
  /// The SHA-1 thumbprint of the certificate.
  final String? sha1Thumbprint;

  /// Creates a new [GetCertificateResult].
  /// [certificateVirtualPath] The path to the certificate file of the certificate.
  /// [errorCode] The error code of the certificate error, if any.
  /// [errorMessage] The error message of the certificate error, if any.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultSecretCreationDate] The date/time the certificate was created in Azure Key Vault.
  /// [keyVaultSecretId] The ID of the Key Vault Secret for the certificate.
  /// [keyVaultSecretVersion] The version of the certificate.
  /// [keyVirtualPath] The path to the key file of the certificate.
  /// [name] Optional.
  /// [nginxDeploymentId] Optional.
  /// [sha1Thumbprint] The SHA-1 thumbprint of the certificate.
  const GetCertificateResult({
    this.certificateVirtualPath,
    this.errorCode,
    this.errorMessage,
    this.id,
    this.keyVaultSecretCreationDate,
    this.keyVaultSecretId,
    this.keyVaultSecretVersion,
    this.keyVirtualPath,
    this.name,
    this.nginxDeploymentId,
    this.sha1Thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVirtualPath': ?certificateVirtualPath,
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'id': ?id,
      'keyVaultSecretCreationDate': ?keyVaultSecretCreationDate,
      'keyVaultSecretId': ?keyVaultSecretId,
      'keyVaultSecretVersion': ?keyVaultSecretVersion,
      'keyVirtualPath': ?keyVirtualPath,
      'name': ?name,
      'nginxDeploymentId': ?nginxDeploymentId,
      'sha1Thumbprint': ?sha1Thumbprint,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificateVirtualPath: (() { final guardedValue = map['certificateVirtualPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorCode: (() { final guardedValue = map['errorCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretCreationDate: (() { final guardedValue = map['keyVaultSecretCreationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretId: (() { final guardedValue = map['keyVaultSecretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretVersion: (() { final guardedValue = map['keyVaultSecretVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVirtualPath: (() { final guardedValue = map['keyVirtualPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nginxDeploymentId: (() { final guardedValue = map['nginxDeploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sha1Thumbprint: (() { final guardedValue = map['sha1Thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
