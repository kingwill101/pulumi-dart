// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunBookDraftContentLinkHash {
  /// Specifies the hash algorithm used to hash the content.
  final pulumi.Input<String> algorithm;
  /// Specifies the expected hash value of the content.
  final pulumi.Input<String> value;

  /// Creates a new [RunBookDraftContentLinkHash].
  /// [algorithm] Specifies the hash algorithm used to hash the content.
  /// [value] Specifies the expected hash value of the content.
  const RunBookDraftContentLinkHash({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory RunBookDraftContentLinkHash.fromMap(Map<String, dynamic> map) {
    return RunBookDraftContentLinkHash(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

