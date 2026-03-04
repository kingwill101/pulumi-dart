// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kms_wrapped_crypto_key.dart';
import 'google_privacy_dlp_v2_transient_crypto_key.dart';
import 'google_privacy_dlp_v2_unwrapped_crypto_key.dart';

/// This is a data encryption key (DEK) (as opposed to a key encryption key (KEK) stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to ensure an attacker cannot unwrap the DEK.
class GooglePrivacyDlpV2CryptoKey {
  /// Key wrapped using Cloud KMS
  final pulumi.Input<GooglePrivacyDlpV2KmsWrappedCryptoKey>? kmsWrapped;

  /// Transient crypto key
  final pulumi.Input<GooglePrivacyDlpV2TransientCryptoKey>? transient;

  /// Unwrapped crypto key
  final pulumi.Input<GooglePrivacyDlpV2UnwrappedCryptoKey>? unwrapped;

  /// Creates a new [GooglePrivacyDlpV2CryptoKey].
  /// [kmsWrapped] Key wrapped using Cloud KMS
  /// [transient] Transient crypto key
  /// [unwrapped] Unwrapped crypto key
  GooglePrivacyDlpV2CryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsWrapped':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2KmsWrappedCryptoKey,
            Map<String, dynamic>
          >(kmsWrapped, (value) => value.toMap()),
      'transient':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2TransientCryptoKey,
            Map<String, dynamic>
          >(transient, (value) => value.toMap()),
      'unwrapped':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2UnwrappedCryptoKey,
            Map<String, dynamic>
          >(unwrapped, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2CryptoKey.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CryptoKey(
      kmsWrapped: (() {
        final guardedValue = map['kmsWrapped'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2KmsWrappedCryptoKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      transient: (() {
        final guardedValue = map['transient'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2TransientCryptoKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      unwrapped: (() {
        final guardedValue = map['unwrapped'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2UnwrappedCryptoKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
