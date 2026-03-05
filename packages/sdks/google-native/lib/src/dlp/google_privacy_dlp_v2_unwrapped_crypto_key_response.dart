// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible.
class GooglePrivacyDlpV2UnwrappedCryptoKeyResponse {
  /// A 128/192/256 bit key.
  final pulumi.Input<String> key;

  /// Creates a new [GooglePrivacyDlpV2UnwrappedCryptoKeyResponse].
  /// [key] A 128/192/256 bit key.
  GooglePrivacyDlpV2UnwrappedCryptoKeyResponse({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory GooglePrivacyDlpV2UnwrappedCryptoKeyResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2UnwrappedCryptoKeyResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

