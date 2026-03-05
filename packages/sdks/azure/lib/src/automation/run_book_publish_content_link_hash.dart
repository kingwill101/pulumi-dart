// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunBookPublishContentLinkHash {
  /// Specifies the hash algorithm used to hash the content.
  final pulumi.Input<String> algorithm;
  /// Specifies the expected hash value of the content.
  final pulumi.Input<String> value;

  /// Creates a new [RunBookPublishContentLinkHash].
  /// [algorithm] Specifies the hash algorithm used to hash the content.
  /// [value] Specifies the expected hash value of the content.
  RunBookPublishContentLinkHash({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory RunBookPublishContentLinkHash.fromMap(Map<String, dynamic> map) {
    return RunBookPublishContentLinkHash(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

