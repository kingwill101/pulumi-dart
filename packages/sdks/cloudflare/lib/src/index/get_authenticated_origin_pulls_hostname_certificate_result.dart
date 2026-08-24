// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthenticatedOriginPullsHostnameCertificate.
class GetAuthenticatedOriginPullsHostnameCertificateResult {
  /// The hostname certificate.
  final String? certificate;
  /// Identifier.
  final String? certificateId;
  /// The date when the certificate expires.
  final String? expiresOn;
  /// Identifier.
  final String? id;
  /// The certificate authority that issued the certificate.
  final String? issuer;
  /// The serial number on the uploaded certificate.
  final String? serialNumber;
  /// The type of hash used for the certificate.
  final String? signature;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  final String? status;
  /// The time when the certificate was uploaded.
  final String? uploadedOn;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsHostnameCertificateResult].
  /// [certificate] The hostname certificate.
  /// [certificateId] Identifier.
  /// [expiresOn] The date when the certificate expires.
  /// [id] Identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [serialNumber] The serial number on the uploaded certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the certificate or the association.
  /// [uploadedOn] The time when the certificate was uploaded.
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsHostnameCertificateResult({
    this.certificate,
    this.certificateId,
    this.expiresOn,
    this.id,
    this.issuer,
    this.serialNumber,
    this.signature,
    this.status,
    this.uploadedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateId': ?certificateId,
      'expiresOn': ?expiresOn,
      'id': ?id,
      'issuer': ?issuer,
      'serialNumber': ?serialNumber,
      'signature': ?signature,
      'status': ?status,
      'uploadedOn': ?uploadedOn,
      'zoneId': ?zoneId,
    };
  }

  factory GetAuthenticatedOriginPullsHostnameCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsHostnameCertificateResult(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
