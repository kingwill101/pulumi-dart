// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiIndexIndexStat {
  /// The number of shards in the Index.
  final pulumi.Input<int> shardsCount;
  /// The number of vectors in the Index.
  final pulumi.Input<String> vectorsCount;

  /// Creates a new [GetAiIndexIndexStat].
  /// [shardsCount] The number of shards in the Index.
  /// [vectorsCount] The number of vectors in the Index.
  const GetAiIndexIndexStat({
    required this.shardsCount,
    required this.vectorsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardsCount': shardsCount,
      'vectorsCount': vectorsCount,
    };
  }

  factory GetAiIndexIndexStat.fromMap(Map<String, dynamic> map) {
    return GetAiIndexIndexStat(
      shardsCount: pulumi.Input.fromValue((map['shardsCount'] as num).toInt()),
      vectorsCount: pulumi.Input.fromValue(map['vectorsCount'] as String),
    );
  }
}
