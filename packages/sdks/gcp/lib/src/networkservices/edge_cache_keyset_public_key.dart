// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheKeysetPublicKey {
  /// The ID of the public key. The ID must be 1-63 characters long, and comply with RFC1035.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]*
  /// which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String> id;
  /// Set to true to have the CDN automatically manage this public key value.
  final pulumi.Input<bool>? managed;
  /// The base64-encoded value of the Ed25519 public key. The base64 encoding can be padded (44 bytes) or unpadded (43 bytes).
  /// Representations or encodings of the public key other than this will be rejected with an error.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? value;

  /// Creates a new [EdgeCacheKeysetPublicKey].
  /// [id] The ID of the public key. The ID must be 1-63 characters long, and comply with RFC1035.
  /// [managed] Set to true to have the CDN automatically manage this public key value.
  /// [value] The base64-encoded value of the Ed25519 public key. The base64 encoding can be padded (44 bytes) or unpadded (43 bytes).
  EdgeCacheKeysetPublicKey({
    required this.id,
    this.managed,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'managed': ?managed,
      'value': ?value,
    };
  }

  factory EdgeCacheKeysetPublicKey.fromMap(Map<String, dynamic> map) {
    return EdgeCacheKeysetPublicKey(
      id: (map['id'] as String).input(),
      managed: map['managed'] == null ? null : (map['managed'] as bool).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

