// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kms_wrapped_crypto_key.dart';

/// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).
class CryptoHashConfig {
  /// An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither `crypto_key` nor `kms_wrapped` is specified. Must not be set if `kms_wrapped` is set.
  final pulumi.Input<String>? cryptoKey;
  /// KMS wrapped key. Must not be set if `crypto_key` is set.
  final pulumi.Input<KmsWrappedCryptoKey>? kmsWrapped;

  /// Creates a new [CryptoHashConfig].
  /// [cryptoKey] An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither `crypto_key` nor `kms_wrapped` is specified. Must not be set if `kms_wrapped` is set.
  /// [kmsWrapped] KMS wrapped key. Must not be set if `crypto_key` is set.
  const CryptoHashConfig({
    this.cryptoKey,
    this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': ?cryptoKey,
      'kmsWrapped': ?pulumi.Input.mapOptionalInputValue<KmsWrappedCryptoKey, Map<String, dynamic>>(kmsWrapped, (value) => value.toMap()),
    };
  }

  factory CryptoHashConfig.fromMap(Map<String, dynamic> map) {
    return CryptoHashConfig(
      cryptoKey: (() { final guardedValue = map['cryptoKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsWrapped: (() { final guardedValue = map['kmsWrapped']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KmsWrappedCryptoKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

