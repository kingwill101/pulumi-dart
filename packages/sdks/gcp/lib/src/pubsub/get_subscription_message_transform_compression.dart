// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionMessageTransformCompression {
  /// Specifies the compression algorithm to use.
  /// Possible values include 'ZLIB'.
  final pulumi.Input<String> compressionAlgorithm;
  /// Specifies whether to compress or decompress the message. Possible values: ["COMPRESS", "DECOMPRESS"]
  final pulumi.Input<String> compressionMode;

  /// Creates a new [GetSubscriptionMessageTransformCompression].
  /// [compressionAlgorithm] Specifies the compression algorithm to use.
  /// [compressionMode] Specifies whether to compress or decompress the message. Possible values: ["COMPRESS", "DECOMPRESS"]
  const GetSubscriptionMessageTransformCompression({
    required this.compressionAlgorithm,
    required this.compressionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionAlgorithm': compressionAlgorithm,
      'compressionMode': compressionMode,
    };
  }

  factory GetSubscriptionMessageTransformCompression.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionMessageTransformCompression(
      compressionAlgorithm: pulumi.Input.fromValue(map['compressionAlgorithm'] as String),
      compressionMode: pulumi.Input.fromValue(map['compressionMode'] as String),
    );
  }
}
