// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeystoresAliasesPkcs12CertsInfoCertInfo {
  /// (Output)
  /// X.509 basic constraints extension.
  final pulumi.Input<String>? basicConstraints;
  /// (Output)
  /// X.509 notAfter validity period in milliseconds since epoch.
  final pulumi.Input<String>? expiryDate;
  /// (Output)
  /// Flag that specifies whether the certificate is valid.
  /// Flag is set to Yes if the certificate is valid, No if expired, or Not yet if not yet valid.
  final pulumi.Input<String>? isValid;
  /// (Output)
  /// X.509 issuer.
  final pulumi.Input<String>? issuer;
  /// (Output)
  /// Public key component of the X.509 subject public key info.
  final pulumi.Input<String>? publicKey;
  /// (Output)
  /// X.509 serial number.
  final pulumi.Input<String>? serialNumber;
  /// (Output)
  /// X.509 signatureAlgorithm.
  final pulumi.Input<String>? sigAlgName;
  /// (Output)
  /// X.509 subject.
  final pulumi.Input<String>? subject;
  /// (Output)
  /// X.509 subject alternative names (SANs) extension.
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// (Output)
  /// X.509 notBefore validity period in milliseconds since epoch.
  final pulumi.Input<String>? validFrom;
  /// (Output)
  /// X.509 version.
  final pulumi.Input<int>? version;

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
  KeystoresAliasesPkcs12CertsInfoCertInfo({
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
      basicConstraints: map['basicConstraints'] == null ? null : (map['basicConstraints']! as String).input(),
      expiryDate: map['expiryDate'] == null ? null : (map['expiryDate']! as String).input(),
      isValid: map['isValid'] == null ? null : (map['isValid']! as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer']! as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey']! as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber']! as String).input(),
      sigAlgName: map['sigAlgName'] == null ? null : (map['sigAlgName']! as String).input(),
      subject: map['subject'] == null ? null : (map['subject']! as String).input(),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : ((map['subjectAlternativeNames']! as List).cast<String>()).input(),
      validFrom: map['validFrom'] == null ? null : (map['validFrom']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}

