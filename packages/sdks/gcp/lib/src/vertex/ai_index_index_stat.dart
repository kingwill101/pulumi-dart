// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiIndexIndexStat {
  /// (Output)
  /// The number of shards in the Index.
  final pulumi.Input<int>? shardsCount;
  /// (Output)
  /// The number of vectors in the Index.
  final pulumi.Input<String>? vectorsCount;

  /// Creates a new [AiIndexIndexStat].
  /// [shardsCount] (Output)
  /// [vectorsCount] (Output)
  AiIndexIndexStat({
    this.shardsCount,
    this.vectorsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardsCount': ?shardsCount,
      'vectorsCount': ?vectorsCount,
    };
  }

  factory AiIndexIndexStat.fromMap(Map<String, dynamic> map) {
    return AiIndexIndexStat(
      shardsCount: map['shardsCount'] == null ? null : (map['shardsCount'] as int).input(),
      vectorsCount: map['vectorsCount'] == null ? null : (map['vectorsCount'] as String).input(),
    );
  }
}

