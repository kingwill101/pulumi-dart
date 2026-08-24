// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstanceIndexMethod {
  /// Enable keyword (BM25) storage backend.
  final pulumi.Input<bool> keyword;
  /// Enable vector (embedding) storage backend.
  final pulumi.Input<bool> vector;

  /// Creates a new [GetAiSearchInstanceIndexMethod].
  /// [keyword] Enable keyword (BM25) storage backend.
  /// [vector] Enable vector (embedding) storage backend.
  const GetAiSearchInstanceIndexMethod({
    required this.keyword,
    required this.vector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyword': keyword,
      'vector': vector,
    };
  }

  factory GetAiSearchInstanceIndexMethod.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstanceIndexMethod(
      keyword: pulumi.Input.fromValue(map['keyword'] as bool),
      vector: pulumi.Input.fromValue(map['vector'] as bool),
    );
  }
}
