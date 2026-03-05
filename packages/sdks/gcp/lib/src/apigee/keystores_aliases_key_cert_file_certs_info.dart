// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeystoresAliasesKeyCertFileCertsInfo {
  /// (Output)
  /// X.509 basic constraints extension.
  final pulumi.Input<String> basicConstraints;
  /// (Output)
  /// X.509 notAfter validity period in milliseconds since epoch.
  final pulumi.Input<String> expiryDate;
  /// (Output)
  /// Flag that specifies whether the certificate is valid.
  /// Flag is set to Yes if the certificate is valid, No if expired, or Not yet if not yet valid.
  final pulumi.Input<String> isValid;
  /// (Output)
  /// X.509 issuer.
  final pulumi.Input<String> issuer;
  /// (Output)
  /// Public key component of the X.509 subject public key info.
  final pulumi.Input<String> publicKey;
  /// (Output)
  /// X.509 serial number.
  final pulumi.Input<String> serialNumber;
  /// (Output)
  /// X.509 signatureAlgorithm.
  final pulumi.Input<String> sigAlgName;
  /// (Output)
  /// X.509 subject.
  final pulumi.Input<String> subject;
  /// (Output)
  /// X.509 subject alternative names (SANs) extension.
  final pulumi.Input<List<String>> subjectAlternativeNames;
  /// (Output)
  /// X.509 notBefore validity period in milliseconds since epoch.
  final pulumi.Input<String> validFrom;
  /// (Output)
  /// X.509 version.
  final pulumi.Input<int> version;

  /// Creates a new [KeystoresAliasesKeyCertFileCertsInfo].
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
  KeystoresAliasesKeyCertFileCertsInfo({
    required this.basicConstraints,
    required this.expiryDate,
    required this.isValid,
    required this.issuer,
    required this.publicKey,
    required this.serialNumber,
    required this.sigAlgName,
    required this.subject,
    required this.subjectAlternativeNames,
    required this.validFrom,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicConstraints': basicConstraints,
      'expiryDate': expiryDate,
      'isValid': isValid,
      'issuer': issuer,
      'publicKey': publicKey,
      'serialNumber': serialNumber,
      'sigAlgName': sigAlgName,
      'subject': subject,
      'subjectAlternativeNames': subjectAlternativeNames,
      'validFrom': validFrom,
      'version': version,
    };
  }

  factory KeystoresAliasesKeyCertFileCertsInfo.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesKeyCertFileCertsInfo(
      basicConstraints: pulumi.Input.fromValue(map['basicConstraints'] as String),
      expiryDate: pulumi.Input.fromValue(map['expiryDate'] as String),
      isValid: pulumi.Input.fromValue(map['isValid'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      sigAlgName: pulumi.Input.fromValue(map['sigAlgName'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      subjectAlternativeNames: pulumi.Input.fromValue((map['subjectAlternativeNames'] as List).cast<String>()),
      validFrom: pulumi.Input.fromValue(map['validFrom'] as String),
      version: pulumi.Input.fromValue(map['version'] as int),
    );
  }
}

