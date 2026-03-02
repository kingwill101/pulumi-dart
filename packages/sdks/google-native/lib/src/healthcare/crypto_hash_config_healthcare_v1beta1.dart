// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kms_wrapped_crypto_key_healthcare_v1beta1.dart';

/// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output. For example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`.
class CryptoHashConfigHealthcareV1beta1 {
  /// An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither crypto_key nor kms_wrapped is specified. Must not be set if kms_wrapped is set.
  final pulumi.Input<String>? cryptoKey;
  /// KMS wrapped key. Must not be set if crypto_key is set.
  final pulumi.Input<KmsWrappedCryptoKeyHealthcareV1beta1>? kmsWrapped;

  /// Creates a new [CryptoHashConfigHealthcareV1beta1].
  /// [cryptoKey] An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither crypto_key nor kms_wrapped is specified. Must not be set if kms_wrapped is set.
  /// [kmsWrapped] KMS wrapped key. Must not be set if crypto_key is set.
  CryptoHashConfigHealthcareV1beta1({
    this.cryptoKey,
    this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': ?cryptoKey,
      'kmsWrapped': ?pulumi.Input.mapOptionalInputValue<KmsWrappedCryptoKeyHealthcareV1beta1, Map<String, dynamic>>(kmsWrapped, (value) => value.toMap()),
    };
  }

  factory CryptoHashConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return CryptoHashConfigHealthcareV1beta1(
      cryptoKey: map['cryptoKey'] == null ? null : (map['cryptoKey']! as String).input(),
      kmsWrapped: map['kmsWrapped'] == null ? null : (KmsWrappedCryptoKeyHealthcareV1beta1.fromMap((map['kmsWrapped']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

