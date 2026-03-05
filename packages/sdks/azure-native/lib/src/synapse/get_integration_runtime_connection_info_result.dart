// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIntegrationRuntimeConnectionInfo.
class GetIntegrationRuntimeConnectionInfoResult {
  /// The on-premises integration runtime host URL.
  final String hostServiceUri;

  /// The integration runtime SSL certificate thumbprint. Click-Once application uses it to do server validation.
  final String identityCertThumbprint;

  /// Whether the identity certificate is expired.
  final bool isIdentityCertExprired;

  /// The public key for encrypting a credential when transferring the credential to the integration runtime.
  final String publicKey;

  /// The token generated in service. Callers use this token to authenticate to integration runtime.
  final String serviceToken;

  /// The integration runtime version.
  final String version;

  /// Creates a new [GetIntegrationRuntimeConnectionInfoResult].
  /// [hostServiceUri] The on-premises integration runtime host URL.
  /// [identityCertThumbprint] The integration runtime SSL certificate thumbprint. Click-Once application uses it to do server validation.
  /// [isIdentityCertExprired] Whether the identity certificate is expired.
  /// [publicKey] The public key for encrypting a credential when transferring the credential to the integration runtime.
  /// [serviceToken] The token generated in service. Callers use this token to authenticate to integration runtime.
  /// [version] The integration runtime version.
  GetIntegrationRuntimeConnectionInfoResult({
    required this.hostServiceUri,
    required this.identityCertThumbprint,
    required this.isIdentityCertExprired,
    required this.publicKey,
    required this.serviceToken,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostServiceUri': hostServiceUri,
      'identityCertThumbprint': identityCertThumbprint,
      'isIdentityCertExprired': isIdentityCertExprired,
      'publicKey': publicKey,
      'serviceToken': serviceToken,
      'version': version,
    };
  }

  factory GetIntegrationRuntimeConnectionInfoResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIntegrationRuntimeConnectionInfoResult(
      hostServiceUri: map['hostServiceUri'] as String,
      identityCertThumbprint: map['identityCertThumbprint'] as String,
      isIdentityCertExprired: map['isIdentityCertExprired'] as bool,
      publicKey: map['publicKey'] as String,
      serviceToken: map['serviceToken'] as String,
      version: map['version'] as String,
    );
  }
}
