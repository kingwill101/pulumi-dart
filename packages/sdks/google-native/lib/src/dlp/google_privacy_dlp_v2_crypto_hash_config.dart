// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_crypto_key.dart';

/// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and integer values can be hashed. See https://cloud.google.com/dlp/docs/pseudonymization to learn more.
class GooglePrivacyDlpV2CryptoHashConfig {
  /// The key used by the hash function.
  final pulumi.Input<GooglePrivacyDlpV2CryptoKey>? cryptoKey;

  /// Creates a new [GooglePrivacyDlpV2CryptoHashConfig].
  /// [cryptoKey] The key used by the hash function.
  GooglePrivacyDlpV2CryptoHashConfig({
    this.cryptoKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CryptoKey, Map<String, dynamic>>(cryptoKey, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2CryptoHashConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CryptoHashConfig(
      cryptoKey: (() { final guardedValue = map['cryptoKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CryptoKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

