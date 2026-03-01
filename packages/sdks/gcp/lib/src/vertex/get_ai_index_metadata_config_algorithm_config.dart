// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_index_metadata_config_algorithm_config_tree_ah_config.dart';

class GetAiIndexMetadataConfigAlgorithmConfig {
  /// Configuration options for using brute force search, which simply implements the
  /// standard linear search in the database for each query.
  final List<Map<String, dynamic>> bruteForceConfigs;
  /// Configuration options for using the tree-AH algorithm (Shallow tree + Asymmetric Hashing).
  /// Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  final List<GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig> treeAhConfigs;

  /// Creates a new [GetAiIndexMetadataConfigAlgorithmConfig].
  /// [bruteForceConfigs] Configuration options for using brute force search, which simply implements the
  /// [treeAhConfigs] Configuration options for using the tree-AH algorithm (Shallow tree + Asymmetric Hashing).
  GetAiIndexMetadataConfigAlgorithmConfig({
    required this.bruteForceConfigs,
    required this.treeAhConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bruteForceConfigs': bruteForceConfigs,
      'treeAhConfigs': pulumi.Input.encodeList<GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig, Map<String, dynamic>>(treeAhConfigs, (value) => value.toMap()),
    };
  }

  factory GetAiIndexMetadataConfigAlgorithmConfig.fromMap(Map<String, dynamic> map) {
    return GetAiIndexMetadataConfigAlgorithmConfig(
      bruteForceConfigs: (map['bruteForceConfigs'] as List).cast<Map<String, dynamic>>(),
      treeAhConfigs: pulumi.Input.decodeList<GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig>(map['treeAhConfigs'], (value) => GetAiIndexMetadataConfigAlgorithmConfigTreeAhConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

