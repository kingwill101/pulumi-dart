// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_credential_format.dart';

/// A public key format and data.
class PublicKeyCredential {
  /// The format of the key.
  final PublicKeyCredentialFormat? format;
  /// The key data.
  final String? key;

  /// Creates a new [PublicKeyCredential].
  /// [format] The format of the key.
  /// [key] The key data.
  PublicKeyCredential({
    this.format,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.value,
      'key': ?key,
    };
  }

  factory PublicKeyCredential.fromMap(Map<String, dynamic> map) {
    return PublicKeyCredential(
      format: map['format'] == null ? null : PublicKeyCredentialFormat.fromValue(map['format'] as String),
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}

