// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustAccessShortLivedCertificate.
class GetZeroTrustAccessShortLivedCertificateResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// UUID.
  final String? appId;
  /// The Application Audience (AUD) tag. Identifies the application associated with the CA.
  final String? aud;
  /// UUID.
  final String? id;
  /// The public key to add to your SSH server configuration.
  final String? publicKey;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessShortLivedCertificateResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [appId] UUID.
  /// [aud] The Application Audience (AUD) tag. Identifies the application associated with the CA.
  /// [id] UUID.
  /// [publicKey] The public key to add to your SSH server configuration.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessShortLivedCertificateResult({
    this.accountId,
    this.appId,
    this.aud,
    this.id,
    this.publicKey,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': ?appId,
      'aud': ?aud,
      'id': ?id,
      'publicKey': ?publicKey,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessShortLivedCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessShortLivedCertificateResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aud: (() { final guardedValue = map['aud']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
