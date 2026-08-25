// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig {
  /// Number of embeddings on each leaf node. The default value is 1000 if not set.
  final pulumi.Input<String?>? leafNodeEmbeddingCount;

  /// Creates a new [AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig].
  /// [leafNodeEmbeddingCount] Number of embeddings on each leaf node. The default value is 1000 if not set.
  const AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig({
    this.leafNodeEmbeddingCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'leafNodeEmbeddingCount': ?leafNodeEmbeddingCount,
    };
  }

  factory AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfig(
      leafNodeEmbeddingCount: (() { final guardedValue = map['leafNodeEmbeddingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
