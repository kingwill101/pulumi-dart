// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultIndexMethod {
  /// Enable keyword (BM25) storage backend.
  final pulumi.Input<bool> keyword;
  /// Enable vector (embedding) storage backend.
  final pulumi.Input<bool> vector;

  /// Creates a new [GetAiSearchInstancesResultIndexMethod].
  /// [keyword] Enable keyword (BM25) storage backend.
  /// [vector] Enable vector (embedding) storage backend.
  const GetAiSearchInstancesResultIndexMethod({
    required this.keyword,
    required this.vector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyword': keyword,
      'vector': vector,
    };
  }

  factory GetAiSearchInstancesResultIndexMethod.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesResultIndexMethod(
      keyword: pulumi.Input.fromValue(map['keyword'] as bool),
      vector: pulumi.Input.fromValue(map['vector'] as bool),
    );
  }
}
