// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceIndexMethod {
  /// Enable keyword (BM25) storage backend.
  final pulumi.Input<bool> keyword;
  /// Enable vector (embedding) storage backend.
  final pulumi.Input<bool> vector;

  /// Creates a new [AiSearchInstanceIndexMethod].
  /// [keyword] Enable keyword (BM25) storage backend.
  /// [vector] Enable vector (embedding) storage backend.
  const AiSearchInstanceIndexMethod({
    required this.keyword,
    required this.vector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyword': keyword,
      'vector': vector,
    };
  }

  factory AiSearchInstanceIndexMethod.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceIndexMethod(
      keyword: pulumi.Input.fromValue(map['keyword'] as bool),
      vector: pulumi.Input.fromValue(map['vector'] as bool),
    );
  }
}
