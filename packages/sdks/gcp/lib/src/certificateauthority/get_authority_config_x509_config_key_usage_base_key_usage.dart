// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage {
  /// The key may be used to sign certificates.
  final pulumi.Input<bool> certSign;
  /// The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  final pulumi.Input<bool> contentCommitment;
  /// The key may be used sign certificate revocation lists.
  final pulumi.Input<bool> crlSign;
  /// The key may be used to encipher data.
  final pulumi.Input<bool> dataEncipherment;
  /// The key may be used to decipher only.
  final pulumi.Input<bool> decipherOnly;
  /// The key may be used for digital signatures.
  final pulumi.Input<bool> digitalSignature;
  /// The key may be used to encipher only.
  final pulumi.Input<bool> encipherOnly;
  /// The key may be used in a key agreement protocol.
  final pulumi.Input<bool> keyAgreement;
  /// The key may be used to encipher other keys.
  final pulumi.Input<bool> keyEncipherment;

  /// Creates a new [GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage].
  /// [certSign] The key may be used to sign certificates.
  /// [contentCommitment] The key may be used for cryptographic commitments. Note that this may also be referred to as "non-repudiation".
  /// [crlSign] The key may be used sign certificate revocation lists.
  /// [dataEncipherment] The key may be used to encipher data.
  /// [decipherOnly] The key may be used to decipher only.
  /// [digitalSignature] The key may be used for digital signatures.
  /// [encipherOnly] The key may be used to encipher only.
  /// [keyAgreement] The key may be used in a key agreement protocol.
  /// [keyEncipherment] The key may be used to encipher other keys.
  GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage({
    required this.certSign,
    required this.contentCommitment,
    required this.crlSign,
    required this.dataEncipherment,
    required this.decipherOnly,
    required this.digitalSignature,
    required this.encipherOnly,
    required this.keyAgreement,
    required this.keyEncipherment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certSign': certSign,
      'contentCommitment': contentCommitment,
      'crlSign': crlSign,
      'dataEncipherment': dataEncipherment,
      'decipherOnly': decipherOnly,
      'digitalSignature': digitalSignature,
      'encipherOnly': encipherOnly,
      'keyAgreement': keyAgreement,
      'keyEncipherment': keyEncipherment,
    };
  }

  factory GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage(
      certSign: (map['certSign'] as bool).input(),
      contentCommitment: (map['contentCommitment'] as bool).input(),
      crlSign: (map['crlSign'] as bool).input(),
      dataEncipherment: (map['dataEncipherment'] as bool).input(),
      decipherOnly: (map['decipherOnly'] as bool).input(),
      digitalSignature: (map['digitalSignature'] as bool).input(),
      encipherOnly: (map['encipherOnly'] as bool).input(),
      keyAgreement: (map['keyAgreement'] as bool).input(),
      keyEncipherment: (map['keyEncipherment'] as bool).input(),
    );
  }
}

