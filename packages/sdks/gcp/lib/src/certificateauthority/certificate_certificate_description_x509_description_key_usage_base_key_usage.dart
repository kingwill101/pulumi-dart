// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage {
  /// The key may be used to sign certificates.
  final pulumi.Input<bool>? certSign;

  /// The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  final pulumi.Input<bool>? contentCommitment;

  /// The key may be used sign certificate revocation lists.
  final pulumi.Input<bool>? crlSign;

  /// The key may be used to encipher data.
  final pulumi.Input<bool>? dataEncipherment;

  /// The key may be used to decipher only.
  final pulumi.Input<bool>? decipherOnly;

  /// The key may be used for digital signatures.
  final pulumi.Input<bool>? digitalSignature;

  /// The key may be used to encipher only.
  final pulumi.Input<bool>? encipherOnly;

  /// The key may be used in a key agreement protocol.
  final pulumi.Input<bool>? keyAgreement;

  /// The key may be used to encipher other keys.
  final pulumi.Input<bool>? keyEncipherment;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage].
  /// [certSign] The key may be used to sign certificates.
  /// [contentCommitment] The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  /// [crlSign] The key may be used sign certificate revocation lists.
  /// [dataEncipherment] The key may be used to encipher data.
  /// [decipherOnly] The key may be used to decipher only.
  /// [digitalSignature] The key may be used for digital signatures.
  /// [encipherOnly] The key may be used to encipher only.
  /// [keyAgreement] The key may be used in a key agreement protocol.
  /// [keyEncipherment] The key may be used to encipher other keys.
  CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage({
    this.certSign,
    this.contentCommitment,
    this.crlSign,
    this.dataEncipherment,
    this.decipherOnly,
    this.digitalSignature,
    this.encipherOnly,
    this.keyAgreement,
    this.keyEncipherment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certSign': ?certSign,
      'contentCommitment': ?contentCommitment,
      'crlSign': ?crlSign,
      'dataEncipherment': ?dataEncipherment,
      'decipherOnly': ?decipherOnly,
      'digitalSignature': ?digitalSignature,
      'encipherOnly': ?encipherOnly,
      'keyAgreement': ?keyAgreement,
      'keyEncipherment': ?keyEncipherment,
    };
  }

  factory CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateCertificateDescriptionX509DescriptionKeyUsageBaseKeyUsage(
      certSign: (() {
        final guardedValue = map['certSign'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      contentCommitment: (() {
        final guardedValue = map['contentCommitment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      crlSign: (() {
        final guardedValue = map['crlSign'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dataEncipherment: (() {
        final guardedValue = map['dataEncipherment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      decipherOnly: (() {
        final guardedValue = map['decipherOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      digitalSignature: (() {
        final guardedValue = map['digitalSignature'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encipherOnly: (() {
        final guardedValue = map['encipherOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyAgreement: (() {
        final guardedValue = map['keyAgreement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyEncipherment: (() {
        final guardedValue = map['keyEncipherment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
