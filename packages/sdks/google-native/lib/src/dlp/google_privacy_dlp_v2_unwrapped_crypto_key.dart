// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible.
class GooglePrivacyDlpV2UnwrappedCryptoKey {
  /// A 128/192/256 bit key.
  final pulumi.Input<String> key;

  /// Creates a new [GooglePrivacyDlpV2UnwrappedCryptoKey].
  /// [key] A 128/192/256 bit key.
  GooglePrivacyDlpV2UnwrappedCryptoKey({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory GooglePrivacyDlpV2UnwrappedCryptoKey.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2UnwrappedCryptoKey(
      key: (map['key'] as String).input(),
    );
  }
}

