// ignore_for_file: unused_element, unnecessary_cast

import 'kms_wrapped_crypto_key_response.dart';

/// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. Outputs a base64-encoded representation of the hashed output (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).
class CryptoHashConfigResponse {
  /// An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither `crypto_key` nor `kms_wrapped` is specified. Must not be set if `kms_wrapped` is set.
  final String cryptoKey;
  /// KMS wrapped key. Must not be set if `crypto_key` is set.
  final KmsWrappedCryptoKeyResponse kmsWrapped;

  /// Creates a new [CryptoHashConfigResponse].
  /// [cryptoKey] An AES 128/192/256 bit key. Causes the hash to be computed based on this key. A default key is generated for each Deidentify operation and is used when neither `crypto_key` nor `kms_wrapped` is specified. Must not be set if `kms_wrapped` is set.
  /// [kmsWrapped] KMS wrapped key. Must not be set if `crypto_key` is set.
  CryptoHashConfigResponse({
    required this.cryptoKey,
    required this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': cryptoKey,
      'kmsWrapped': kmsWrapped.toMap(),
    };
  }

  factory CryptoHashConfigResponse.fromMap(Map<String, dynamic> map) {
    return CryptoHashConfigResponse(
      cryptoKey: map['cryptoKey'] as String,
      kmsWrapped: KmsWrappedCryptoKeyResponse.fromMap((map['kmsWrapped'] as Map).cast<String, dynamic>()),
    );
  }
}

