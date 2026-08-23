// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiIndexMetadataConfigAlgorithmConfigTreeAhConfig {
  /// Number of embeddings on each leaf node. The default value is 1000 if not set.
  final pulumi.Input<int>? leafNodeEmbeddingCount;
  /// The default percentage of leaf nodes that any query may be searched. Must be in
  /// range 1-100, inclusive. The default value is 10 (means 10%) if not set.
  final pulumi.Input<int>? leafNodesToSearchPercent;

  /// Creates a new [AiIndexMetadataConfigAlgorithmConfigTreeAhConfig].
  /// [leafNodeEmbeddingCount] Number of embeddings on each leaf node. The default value is 1000 if not set.
  /// [leafNodesToSearchPercent] The default percentage of leaf nodes that any query may be searched. Must be in
  const AiIndexMetadataConfigAlgorithmConfigTreeAhConfig({
    this.leafNodeEmbeddingCount,
    this.leafNodesToSearchPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leafNodeEmbeddingCount': ?leafNodeEmbeddingCount,
      'leafNodesToSearchPercent': ?leafNodesToSearchPercent,
    };
  }

  factory AiIndexMetadataConfigAlgorithmConfigTreeAhConfig.fromMap(Map<String, dynamic> map) {
    return AiIndexMetadataConfigAlgorithmConfigTreeAhConfig(
      leafNodeEmbeddingCount: (() { final guardedValue = map['leafNodeEmbeddingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      leafNodesToSearchPercent: (() { final guardedValue = map['leafNodesToSearchPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
