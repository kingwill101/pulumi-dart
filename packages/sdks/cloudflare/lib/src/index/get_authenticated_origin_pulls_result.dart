// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthenticatedOriginPulls.
class GetAuthenticatedOriginPullsResult {
  /// Identifier.
  final String? certId;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  final String? certStatus;
  /// The time when the certificate was updated.
  final String? certUpdatedAt;
  /// The time when the certificate was uploaded.
  final String? certUploadedOn;
  /// The hostname certificate.
  final String? certificate;
  /// The time when the certificate was created.
  final String? createdAt;
  /// Indicates whether hostname-level authenticated origin pulls is enabled. A null value voids the association.
  final bool? enabled;
  /// The date when the certificate expires.
  final String? expiresOn;
  /// The hostname on the origin for which the client certificate uploaded will be used.
  final String? hostname;
  /// The certificate authority that issued the certificate.
  final String? issuer;
  /// The serial number on the uploaded certificate.
  final String? serialNumber;
  /// The type of hash used for the certificate.
  final String? signature;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  final String? status;
  /// The time when the certificate was updated.
  final String? updatedAt;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsResult].
  /// [certId] Identifier.
  /// [certStatus] Status of the certificate or the association.
  /// [certUpdatedAt] The time when the certificate was updated.
  /// [certUploadedOn] The time when the certificate was uploaded.
  /// [certificate] The hostname certificate.
  /// [createdAt] The time when the certificate was created.
  /// [enabled] Indicates whether hostname-level authenticated origin pulls is enabled. A null value voids the association.
  /// [expiresOn] The date when the certificate expires.
  /// [hostname] The hostname on the origin for which the client certificate uploaded will be used.
  /// [issuer] The certificate authority that issued the certificate.
  /// [serialNumber] The serial number on the uploaded certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the certificate or the association.
  /// [updatedAt] The time when the certificate was updated.
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsResult({
    this.certId,
    this.certStatus,
    this.certUpdatedAt,
    this.certUploadedOn,
    this.certificate,
    this.createdAt,
    this.enabled,
    this.expiresOn,
    this.hostname,
    this.issuer,
    this.serialNumber,
    this.signature,
    this.status,
    this.updatedAt,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'certStatus': ?certStatus,
      'certUpdatedAt': ?certUpdatedAt,
      'certUploadedOn': ?certUploadedOn,
      'certificate': ?certificate,
      'createdAt': ?createdAt,
      'enabled': ?enabled,
      'expiresOn': ?expiresOn,
      'hostname': ?hostname,
      'issuer': ?issuer,
      'serialNumber': ?serialNumber,
      'signature': ?signature,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'zoneId': ?zoneId,
    };
  }

  factory GetAuthenticatedOriginPullsResult.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsResult(
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certStatus: (() { final guardedValue = map['certStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certUpdatedAt: (() { final guardedValue = map['certUpdatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certUploadedOn: (() { final guardedValue = map['certUploadedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
