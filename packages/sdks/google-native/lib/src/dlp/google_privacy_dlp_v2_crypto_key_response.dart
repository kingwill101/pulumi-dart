// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_kms_wrapped_crypto_key_response.dart';
import 'google_privacy_dlp_v2_transient_crypto_key_response.dart';
import 'google_privacy_dlp_v2_unwrapped_crypto_key_response.dart';

/// This is a data encryption key (DEK) (as opposed to a key encryption key (KEK) stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to ensure an attacker cannot unwrap the DEK.
class GooglePrivacyDlpV2CryptoKeyResponse {
  /// Key wrapped using Cloud KMS
  final pulumi.Input<GooglePrivacyDlpV2KmsWrappedCryptoKeyResponse> kmsWrapped;

  /// Transient crypto key
  final pulumi.Input<GooglePrivacyDlpV2TransientCryptoKeyResponse> transient;

  /// Unwrapped crypto key
  final pulumi.Input<GooglePrivacyDlpV2UnwrappedCryptoKeyResponse> unwrapped;

  /// Creates a new [GooglePrivacyDlpV2CryptoKeyResponse].
  /// [kmsWrapped] Key wrapped using Cloud KMS
  /// [transient] Transient crypto key
  /// [unwrapped] Unwrapped crypto key
  GooglePrivacyDlpV2CryptoKeyResponse({
    required this.kmsWrapped,
    required this.transient,
    required this.unwrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsWrapped':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2KmsWrappedCryptoKeyResponse,
            Map<String, dynamic>
          >(kmsWrapped, (value) => value.toMap()),
      'transient':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2TransientCryptoKeyResponse,
            Map<String, dynamic>
          >(transient, (value) => value.toMap()),
      'unwrapped':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2UnwrappedCryptoKeyResponse,
            Map<String, dynamic>
          >(unwrapped, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2CryptoKeyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2CryptoKeyResponse(
      kmsWrapped: pulumi.Input.fromValue(
        GooglePrivacyDlpV2KmsWrappedCryptoKeyResponse.fromMap(
          (map['kmsWrapped']! as Map).cast<String, dynamic>(),
        ),
      ),
      transient: pulumi.Input.fromValue(
        GooglePrivacyDlpV2TransientCryptoKeyResponse.fromMap(
          (map['transient']! as Map).cast<String, dynamic>(),
        ),
      ),
      unwrapped: pulumi.Input.fromValue(
        GooglePrivacyDlpV2UnwrappedCryptoKeyResponse.fromMap(
          (map['unwrapped']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
