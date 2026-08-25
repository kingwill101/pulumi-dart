// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeystoresAliasesPkcs12CertsInfoCertInfo {
  /// (Output)
  /// X.509 basic constraints extension.
  final pulumi.Input<String?>? basicConstraints;
  /// (Output)
  /// X.509 notAfter validity period in milliseconds since epoch.
  final pulumi.Input<String?>? expiryDate;
  /// (Output)
  /// Flag that specifies whether the certificate is valid.
  /// Flag is set to Yes if the certificate is valid, No if expired, or Not yet if not yet valid.
  final pulumi.Input<String?>? isValid;
  /// (Output)
  /// X.509 issuer.
  final pulumi.Input<String?>? issuer;
  /// (Output)
  /// Public key component of the X.509 subject public key info.
  final pulumi.Input<String?>? publicKey;
  /// (Output)
  /// X.509 serial number.
  final pulumi.Input<String?>? serialNumber;
  /// (Output)
  /// X.509 signatureAlgorithm.
  final pulumi.Input<String?>? sigAlgName;
  /// (Output)
  /// X.509 subject.
  final pulumi.Input<String?>? subject;
  /// (Output)
  /// X.509 subject alternative names (SANs) extension.
  final pulumi.Input<List<String>?>? subjectAlternativeNames;
  /// (Output)
  /// X.509 notBefore validity period in milliseconds since epoch.
  final pulumi.Input<String?>? validFrom;
  /// (Output)
  /// X.509 version.
  final pulumi.Input<int?>? version;

  /// Creates a new [KeystoresAliasesPkcs12CertsInfoCertInfo].
  /// [basicConstraints] (Output)
  /// [expiryDate] (Output)
  /// [isValid] (Output)
  /// [issuer] (Output)
  /// [publicKey] (Output)
  /// [serialNumber] (Output)
  /// [sigAlgName] (Output)
  /// [subject] (Output)
  /// [subjectAlternativeNames] (Output)
  /// [validFrom] (Output)
  /// [version] (Output)
  const KeystoresAliasesPkcs12CertsInfoCertInfo({
    this.basicConstraints,
    this.expiryDate,
    this.isValid,
    this.issuer,
    this.publicKey,
    this.serialNumber,
    this.sigAlgName,
    this.subject,
    this.subjectAlternativeNames,
    this.validFrom,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicConstraints': ?basicConstraints,
      'expiryDate': ?expiryDate,
      'isValid': ?isValid,
      'issuer': ?issuer,
      'publicKey': ?publicKey,
      'serialNumber': ?serialNumber,
      'sigAlgName': ?sigAlgName,
      'subject': ?subject,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'validFrom': ?validFrom,
      'version': ?version,
    };
  }

  factory KeystoresAliasesPkcs12CertsInfoCertInfo.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesPkcs12CertsInfoCertInfo(
      basicConstraints: (() { final guardedValue = map['basicConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryDate: (() { final guardedValue = map['expiryDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isValid: (() { final guardedValue = map['isValid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sigAlgName: (() { final guardedValue = map['sigAlgName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      validFrom: (() { final guardedValue = map['validFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
