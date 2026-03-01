// ignore_for_file: unused_element, unnecessary_cast

import 'ai_index_metadata_config_algorithm_config_tree_ah_config.dart';

class AiIndexMetadataConfigAlgorithmConfig {
  /// Configuration options for using brute force search, which simply implements the
  /// standard linear search in the database for each query.
  final Map<String, dynamic>? bruteForceConfig;
  /// Configuration options for using the tree-AH algorithm (Shallow tree + Asymmetric Hashing).
  /// Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  /// Structure is documented below.
  final AiIndexMetadataConfigAlgorithmConfigTreeAhConfig? treeAhConfig;

  /// Creates a new [AiIndexMetadataConfigAlgorithmConfig].
  /// [bruteForceConfig] Configuration options for using brute force search, which simply implements the
  /// [treeAhConfig] Configuration options for using the tree-AH algorithm (Shallow tree + Asymmetric Hashing).
  AiIndexMetadataConfigAlgorithmConfig({
    this.bruteForceConfig,
    this.treeAhConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bruteForceConfig': ?bruteForceConfig,
      'treeAhConfig': ?treeAhConfig == null ? null : treeAhConfig!.toMap(),
    };
  }

  factory AiIndexMetadataConfigAlgorithmConfig.fromMap(Map<String, dynamic> map) {
    return AiIndexMetadataConfigAlgorithmConfig(
      bruteForceConfig: map['bruteForceConfig'] == null ? null : (map['bruteForceConfig'] as Map).cast<String, dynamic>(),
      treeAhConfig: map['treeAhConfig'] == null ? null : AiIndexMetadataConfigAlgorithmConfigTreeAhConfig.fromMap((map['treeAhConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

