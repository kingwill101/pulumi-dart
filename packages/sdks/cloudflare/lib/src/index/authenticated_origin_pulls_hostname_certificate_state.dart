// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthenticatedOriginPullsHostnameCertificate resources.
class AuthenticatedOriginPullsHostnameCertificateState {
  /// The hostname certificate.
  final pulumi.Input<String?>? certificate;
  /// The date when the certificate expires.
  final pulumi.Input<String?>? expiresOn;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String?>? issuer;
  /// The hostname certificate's private key.
  final pulumi.Input<String?>? privateKey;
  /// The serial number on the uploaded certificate.
  final pulumi.Input<String?>? serialNumber;
  /// The type of hash used for the certificate.
  final pulumi.Input<String?>? signature;
  /// Status of the certificate or the association.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  final pulumi.Input<String?>? status;
  /// The time when the certificate was uploaded.
  final pulumi.Input<String?>? uploadedOn;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AuthenticatedOriginPullsHostnameCertificateState].
  /// [certificate] The hostname certificate.
  /// [expiresOn] The date when the certificate expires.
  /// [issuer] The certificate authority that issued the certificate.
  /// [privateKey] The hostname certificate's private key.
  /// [serialNumber] The serial number on the uploaded certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the certificate or the association.
  /// [uploadedOn] The time when the certificate was uploaded.
  /// [zoneId] Identifier.
  const AuthenticatedOriginPullsHostnameCertificateState({
    this.certificate,
    this.expiresOn,
    this.issuer,
    this.privateKey,
    this.serialNumber,
    this.signature,
    this.status,
    this.uploadedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'expiresOn': ?expiresOn,
      'issuer': ?issuer,
      'privateKey': ?privateKey,
      'serialNumber': ?serialNumber,
      'signature': ?signature,
      'status': ?status,
      'uploadedOn': ?uploadedOn,
      'zoneId': ?zoneId,
    };
  }

  factory AuthenticatedOriginPullsHostnameCertificateState.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsHostnameCertificateState(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
