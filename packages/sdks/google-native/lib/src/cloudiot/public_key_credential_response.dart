// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A public key format and data.
class PublicKeyCredentialResponse {
  /// The format of the key.
  final pulumi.Input<String> format;
  /// The key data.
  final pulumi.Input<String> key;

  /// Creates a new [PublicKeyCredentialResponse].
  /// [format] The format of the key.
  /// [key] The key data.
  PublicKeyCredentialResponse({
    required this.format,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'key': key,
    };
  }

  factory PublicKeyCredentialResponse.fromMap(Map<String, dynamic> map) {
    return PublicKeyCredentialResponse(
      format: (map['format'] as String).input(),
      key: (map['key'] as String).input(),
    );
  }
}

