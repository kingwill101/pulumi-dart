// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionMessageTransformCompression {
  /// Specifies the compression algorithm to use.
  /// Possible values include `ZLIB`.
  final pulumi.Input<String> compressionAlgorithm;
  /// Specifies whether to compress or decompress the message.
  /// Possible values are: `COMPRESS`, `DECOMPRESS`.
  final pulumi.Input<String> compressionMode;

  /// Creates a new [SubscriptionMessageTransformCompression].
  /// [compressionAlgorithm] Specifies the compression algorithm to use.
  /// [compressionMode] Specifies whether to compress or decompress the message.
  const SubscriptionMessageTransformCompression({
    required this.compressionAlgorithm,
    required this.compressionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionAlgorithm': compressionAlgorithm,
      'compressionMode': compressionMode,
    };
  }

  factory SubscriptionMessageTransformCompression.fromMap(Map<String, dynamic> map) {
    return SubscriptionMessageTransformCompression(
      compressionAlgorithm: pulumi.Input.fromValue(map['compressionAlgorithm'] as String),
      compressionMode: pulumi.Input.fromValue(map['compressionMode'] as String),
    );
  }
}
