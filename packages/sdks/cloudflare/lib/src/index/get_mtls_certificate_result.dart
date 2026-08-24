// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMtlsCertificate.
class GetMtlsCertificateResult {
  /// Identifier.
  final String? accountId;
  /// Indicates whether the certificate is a CA or leaf certificate.
  final bool? ca;
  /// The uploaded root CA certificate.
  final String? certificates;
  /// When the certificate expires.
  final String? expiresOn;
  /// Identifier.
  final String? id;
  /// The certificate authority that issued the certificate.
  final String? issuer;
  /// Identifier.
  final String? mtlsCertificateId;
  /// Optional unique name for the certificate. Only used for human readability.
  final String? name;
  /// The certificate serial number.
  final String? serialNumber;
  /// The type of hash used for the certificate.
  final String? signature;
  /// This is the time the certificate was uploaded.
  final String? uploadedOn;

  /// Creates a new [GetMtlsCertificateResult].
  /// [accountId] Identifier.
  /// [ca] Indicates whether the certificate is a CA or leaf certificate.
  /// [certificates] The uploaded root CA certificate.
  /// [expiresOn] When the certificate expires.
  /// [id] Identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [mtlsCertificateId] Identifier.
  /// [name] Optional unique name for the certificate. Only used for human readability.
  /// [serialNumber] The certificate serial number.
  /// [signature] The type of hash used for the certificate.
  /// [uploadedOn] This is the time the certificate was uploaded.
  const GetMtlsCertificateResult({
    this.accountId,
    this.ca,
    this.certificates,
    this.expiresOn,
    this.id,
    this.issuer,
    this.mtlsCertificateId,
    this.name,
    this.serialNumber,
    this.signature,
    this.uploadedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ca': ?ca,
      'certificates': ?certificates,
      'expiresOn': ?expiresOn,
      'id': ?id,
      'issuer': ?issuer,
      'mtlsCertificateId': ?mtlsCertificateId,
      'name': ?name,
      'serialNumber': ?serialNumber,
      'signature': ?signature,
      'uploadedOn': ?uploadedOn,
    };
  }

  factory GetMtlsCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetMtlsCertificateResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ca: (() { final guardedValue = map['ca']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mtlsCertificateId: (() { final guardedValue = map['mtlsCertificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
