// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MtlsCertificate resources.
class MtlsCertificateState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Indicates whether the certificate is a CA or leaf certificate.
  final pulumi.Input<bool?>? ca;
  /// The uploaded root CA certificate or certificate chain. Certificates must be provided in PEM format with the certificate matching the privateKey first in the chain.
  final pulumi.Input<String?>? certificates;
  /// When the certificate expires.
  final pulumi.Input<String?>? expiresOn;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String?>? issuer;
  /// Optional unique name for the certificate. Only used for human readability.
  final pulumi.Input<String?>? name;
  /// The private key for the certificate. This field is only needed for specific use cases such as using a custom certificate with Zero Trust's block page.
  final pulumi.Input<String?>? privateKey;
  /// The certificate serial number.
  final pulumi.Input<String?>? serialNumber;
  /// The type of hash used for the certificate.
  final pulumi.Input<String?>? signature;
  /// This is the time the certificate was updated.
  final pulumi.Input<String?>? updatedAt;
  /// This is the time the certificate was uploaded.
  final pulumi.Input<String?>? uploadedOn;

  /// Creates a new [MtlsCertificateState].
  /// [accountId] Identifier.
  /// [ca] Indicates whether the certificate is a CA or leaf certificate.
  /// [certificates] The uploaded root CA certificate or certificate chain. Certificates must be provided in PEM format with the certificate matching the privateKey first in the chain.
  /// [expiresOn] When the certificate expires.
  /// [issuer] The certificate authority that issued the certificate.
  /// [name] Optional unique name for the certificate. Only used for human readability.
  /// [privateKey] The private key for the certificate. This field is only needed for specific use cases such as using a custom certificate with Zero Trust's block page.
  /// [serialNumber] The certificate serial number.
  /// [signature] The type of hash used for the certificate.
  /// [updatedAt] This is the time the certificate was updated.
  /// [uploadedOn] This is the time the certificate was uploaded.
  const MtlsCertificateState({
    this.accountId,
    this.ca,
    this.certificates,
    this.expiresOn,
    this.issuer,
    this.name,
    this.privateKey,
    this.serialNumber,
    this.signature,
    this.updatedAt,
    this.uploadedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ca': ?ca,
      'certificates': ?certificates,
      'expiresOn': ?expiresOn,
      'issuer': ?issuer,
      'name': ?name,
      'privateKey': ?privateKey,
      'serialNumber': ?serialNumber,
      'signature': ?signature,
      'updatedAt': ?updatedAt,
      'uploadedOn': ?uploadedOn,
    };
  }

  factory MtlsCertificateState.fromMap(Map<String, dynamic> map) {
    return MtlsCertificateState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ca: (() { final guardedValue = map['ca']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
