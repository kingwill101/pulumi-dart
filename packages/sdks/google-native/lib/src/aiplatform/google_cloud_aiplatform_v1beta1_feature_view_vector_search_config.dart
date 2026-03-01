// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config_distance_measure_type.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config_tree_ahconfig.dart';

/// Configuration for vector search.
class GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig {
  /// Optional. Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search.
  final Map<String, dynamic>? bruteForceConfig;
  /// Optional. Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k' of the k neighbors returned have the same value of crowding_attribute.
  final String? crowdingColumn;
  /// Optional. The distance measure used in nearest neighbor search.
  final GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType? distanceMeasureType;
  /// Optional. Column of embedding. This column contains the source data to create index for vector search. embedding_column must be set when using vector search.
  final String? embeddingColumn;
  /// Optional. The number of dimensions of the input embedding.
  final int? embeddingDimension;
  /// Optional. Columns of features that're used to filter vector search results.
  final List<String>? filterColumns;
  /// Optional. Configuration options for the tree-AH algorithm (Shallow tree + Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  final GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig? treeAhConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig].
  /// [bruteForceConfig] Optional. Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search.
  /// [crowdingColumn] Optional. Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k' of the k neighbors returned have the same value of crowding_attribute.
  /// [distanceMeasureType] Optional. The distance measure used in nearest neighbor search.
  /// [embeddingColumn] Optional. Column of embedding. This column contains the source data to create index for vector search. embedding_column must be set when using vector search.
  /// [embeddingDimension] Optional. The number of dimensions of the input embedding.
  /// [filterColumns] Optional. Columns of features that're used to filter vector search results.
  /// [treeAhConfig] Optional. Configuration options for the tree-AH algorithm (Shallow tree + Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig({
    this.bruteForceConfig,
    this.crowdingColumn,
    this.distanceMeasureType,
    this.embeddingColumn,
    this.embeddingDimension,
    this.filterColumns,
    this.treeAhConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bruteForceConfig': ?bruteForceConfig,
      'crowdingColumn': ?crowdingColumn,
      'distanceMeasureType': ?distanceMeasureType == null ? null : distanceMeasureType!.value,
      'embeddingColumn': ?embeddingColumn,
      'embeddingDimension': ?embeddingDimension,
      'filterColumns': ?filterColumns,
      'treeAhConfig': ?treeAhConfig == null ? null : treeAhConfig!.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig(
      bruteForceConfig: map['bruteForceConfig'] == null ? null : (map['bruteForceConfig'] as Map).cast<String, dynamic>(),
      crowdingColumn: map['crowdingColumn'] == null ? null : map['crowdingColumn'] as String,
      distanceMeasureType: map['distanceMeasureType'] == null ? null : GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType.fromValue(map['distanceMeasureType'] as String),
      embeddingColumn: map['embeddingColumn'] == null ? null : map['embeddingColumn'] as String,
      embeddingDimension: map['embeddingDimension'] == null ? null : map['embeddingDimension'] as int,
      filterColumns: map['filterColumns'] == null ? null : (map['filterColumns'] as List).cast<String>(),
      treeAhConfig: map['treeAhConfig'] == null ? null : GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig.fromMap((map['treeAhConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

