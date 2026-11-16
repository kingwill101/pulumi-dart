// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancesResultIndexMethod {
  final pulumi.Input<bool> keyword;
  final pulumi.Input<bool> vector;

  /// Creates a new [GetAiSearchInstancesResultIndexMethod].
  /// [keyword] Required.
  /// [vector] Required.
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
