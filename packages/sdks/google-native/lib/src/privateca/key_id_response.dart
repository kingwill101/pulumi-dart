// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A KeyId identifies a specific public key, usually by hashing the public key.
class KeyIdResponse {
  /// Optional. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 bit SHA-1 hash of the public key.
  final pulumi.Input<String> keyId;

  /// Creates a new [KeyIdResponse].
  /// [keyId] Optional. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 bit SHA-1 hash of the public key.
  const KeyIdResponse({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory KeyIdResponse.fromMap(Map<String, dynamic> map) {
    return KeyIdResponse(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}
