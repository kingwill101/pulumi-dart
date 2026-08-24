// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthenticatedOriginPullsCertificate resources.
class AuthenticatedOriginPullsCertificateState {
  /// The zone's leaf certificate.
  final pulumi.Input<String?>? certificate;
  /// Identifier.
  final pulumi.Input<String?>? certificateId;
  /// Indicates whether zone-level authenticated origin pulls is enabled.
  final pulumi.Input<bool?>? enabled;
  /// When the certificate from the authority expires.
  final pulumi.Input<String?>? expiresOn;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String?>? issuer;
  /// The zone's private key.
  final pulumi.Input<String?>? privateKey;
  /// The serial number on the uploaded certificate.
  final pulumi.Input<String?>? serialNumber;
  /// The type of hash used for the certificate.
  final pulumi.Input<String?>? signature;
  /// Status of the certificate activation.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deleted", "deployment*timed*out", "deletion*timed*out".
  final pulumi.Input<String?>? status;
  /// This is the time the certificate was uploaded.
  final pulumi.Input<String?>? uploadedOn;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AuthenticatedOriginPullsCertificateState].
  /// [certificate] The zone's leaf certificate.
  /// [certificateId] Identifier.
  /// [enabled] Indicates whether zone-level authenticated origin pulls is enabled.
  /// [expiresOn] When the certificate from the authority expires.
  /// [issuer] The certificate authority that issued the certificate.
  /// [privateKey] The zone's private key.
  /// [serialNumber] The serial number on the uploaded certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the certificate activation.
  /// [uploadedOn] This is the time the certificate was uploaded.
  /// [zoneId] Identifier.
  const AuthenticatedOriginPullsCertificateState({
    this.certificate,
    this.certificateId,
    this.enabled,
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
      'certificateId': ?certificateId,
      'enabled': ?enabled,
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

  factory AuthenticatedOriginPullsCertificateState.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsCertificateState(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
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
