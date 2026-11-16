// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig {
  /// The default fraction of leaf nodes that any query may be searched. Must be in
  /// range 0.0-1.0, exclusive. The default value is 0.05 if not set.
  /// This value can only be set when creating the index.
  final pulumi.Input<double> fractionLeafNodesToSearch;
  /// Number of embeddings on each leaf node. The default value is 1000 if not set.
  final pulumi.Input<int> leafNodeEmbeddingCount;
  /// The default percentage of leaf nodes that any query may be searched. Must be in
  /// range 1-100, inclusive. The default value is 10 (means 10%) if not set.
  final pulumi.Input<int> leafNodesToSearchPercent;

  /// Creates a new [GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig].
  /// [fractionLeafNodesToSearch] The default fraction of leaf nodes that any query may be searched. Must be in
  /// [leafNodeEmbeddingCount] Number of embeddings on each leaf node. The default value is 1000 if not set.
  /// [leafNodesToSearchPercent] The default percentage of leaf nodes that any query may be searched. Must be in
  const GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig({
    required this.fractionLeafNodesToSearch,
    required this.leafNodeEmbeddingCount,
    required this.leafNodesToSearchPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fractionLeafNodesToSearch': fractionLeafNodesToSearch,
      'leafNodeEmbeddingCount': leafNodeEmbeddingCount,
      'leafNodesToSearchPercent': leafNodesToSearchPercent,
    };
  }

  factory GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig.fromMap(Map<String, dynamic> map) {
    return GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig(
      fractionLeafNodesToSearch: pulumi.Input.fromValue((map['fractionLeafNodesToSearch'] as num).toDouble()),
      leafNodeEmbeddingCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['leafNodeEmbeddingCount'])),
      leafNodesToSearchPercent: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['leafNodesToSearchPercent'])),
    );
  }
}
