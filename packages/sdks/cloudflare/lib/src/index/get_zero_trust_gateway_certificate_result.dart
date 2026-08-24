// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustGatewayCertificate.
class GetZeroTrustGatewayCertificateResult {
  final String? accountId;
  /// Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
  /// Available values: "pending*deployment", "available", "pending*deletion", "inactive".
  final String? bindingStatus;
  /// Provide the CA certificate (read-only).
  final String? certificate;
  /// Identify the certificate with a UUID.
  final String? certificateId;
  final String? createdAt;
  final String? expiresOn;
  /// Provide the SHA256 fingerprint of the certificate (read-only).
  final String? fingerprint;
  /// Identify the certificate with a UUID.
  final String? id;
  /// Indicate whether Gateway TLS interception uses this certificate (read-only). You cannot set this value directly. To configure interception, use the Gateway configuration setting named `certificate` (read-only).
  final bool? inUse;
  /// Indicate the organization that issued the certificate (read-only).
  final String? issuerOrg;
  /// Provide the entire issuer field of the certificate (read-only).
  final String? issuerRaw;
  /// Indicate the read-only certificate type, BYO-PKI (custom) or Gateway-managed.
  /// Available values: "custom", "gatewayManaged".
  final String? type;
  final String? updatedAt;
  final String? uploadedOn;

  /// Creates a new [GetZeroTrustGatewayCertificateResult].
  /// [accountId] Optional.
  /// [bindingStatus] Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
  /// [certificate] Provide the CA certificate (read-only).
  /// [certificateId] Identify the certificate with a UUID.
  /// [createdAt] Optional.
  /// [expiresOn] Optional.
  /// [fingerprint] Provide the SHA256 fingerprint of the certificate (read-only).
  /// [id] Identify the certificate with a UUID.
  /// [inUse] Indicate whether Gateway TLS interception uses this certificate (read-only). You cannot set this value directly. To configure interception, use the Gateway configuration setting named `certificate` (read-only).
  /// [issuerOrg] Indicate the organization that issued the certificate (read-only).
  /// [issuerRaw] Provide the entire issuer field of the certificate (read-only).
  /// [type] Indicate the read-only certificate type, BYO-PKI (custom) or Gateway-managed.
  /// [updatedAt] Optional.
  /// [uploadedOn] Optional.
  const GetZeroTrustGatewayCertificateResult({
    this.accountId,
    this.bindingStatus,
    this.certificate,
    this.certificateId,
    this.createdAt,
    this.expiresOn,
    this.fingerprint,
    this.id,
    this.inUse,
    this.issuerOrg,
    this.issuerRaw,
    this.type,
    this.updatedAt,
    this.uploadedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bindingStatus': ?bindingStatus,
      'certificate': ?certificate,
      'certificateId': ?certificateId,
      'createdAt': ?createdAt,
      'expiresOn': ?expiresOn,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'inUse': ?inUse,
      'issuerOrg': ?issuerOrg,
      'issuerRaw': ?issuerRaw,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'uploadedOn': ?uploadedOn,
    };
  }

  factory GetZeroTrustGatewayCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayCertificateResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bindingStatus: (() { final guardedValue = map['bindingStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inUse: (() { final guardedValue = map['inUse']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      issuerOrg: (() { final guardedValue = map['issuerOrg']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuerRaw: (() { final guardedValue = map['issuerRaw']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
