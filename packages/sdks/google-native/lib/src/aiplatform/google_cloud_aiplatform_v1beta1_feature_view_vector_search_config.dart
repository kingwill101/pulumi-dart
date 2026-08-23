// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config_distance_measure_type.dart';
import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config_tree_ahconfig.dart';

/// Configuration for vector search.
class GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig {
  /// Optional. Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search.
  final pulumi.Input<Map<String, dynamic>>? bruteForceConfig;
  /// Optional. Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k' of the k neighbors returned have the same value of crowding_attribute.
  final pulumi.Input<String>? crowdingColumn;
  /// Optional. The distance measure used in nearest neighbor search.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType>? distanceMeasureType;
  /// Optional. Column of embedding. This column contains the source data to create index for vector search. embedding_column must be set when using vector search.
  final pulumi.Input<String>? embeddingColumn;
  /// Optional. The number of dimensions of the input embedding.
  final pulumi.Input<int>? embeddingDimension;
  /// Optional. Columns of features that're used to filter vector search results.
  final pulumi.Input<List<String>>? filterColumns;
  /// Optional. Configuration options for the tree-AH algorithm (Shallow tree + Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig>? treeAhConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig].
  /// [bruteForceConfig] Optional. Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search.
  /// [crowdingColumn] Optional. Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k' of the k neighbors returned have the same value of crowding_attribute.
  /// [distanceMeasureType] Optional. The distance measure used in nearest neighbor search.
  /// [embeddingColumn] Optional. Column of embedding. This column contains the source data to create index for vector search. embedding_column must be set when using vector search.
  /// [embeddingDimension] Optional. The number of dimensions of the input embedding.
  /// [filterColumns] Optional. Columns of features that're used to filter vector search results.
  /// [treeAhConfig] Optional. Configuration options for the tree-AH algorithm (Shallow tree + Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  const GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig({
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
      'distanceMeasureType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType, String>(distanceMeasureType, (value) => value.wireValue),
      'embeddingColumn': ?embeddingColumn,
      'embeddingDimension': ?embeddingDimension,
      'filterColumns': ?filterColumns,
      'treeAhConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig, Map<String, dynamic>>(treeAhConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfig(
      bruteForceConfig: (() { final guardedValue = map['bruteForceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      crowdingColumn: (() { final guardedValue = map['crowdingColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distanceMeasureType: (() { final guardedValue = map['distanceMeasureType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType.fromValue(guardedValue as String)); })(),
      embeddingColumn: (() { final guardedValue = map['embeddingColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embeddingDimension: (() { final guardedValue = map['embeddingDimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      filterColumns: (() { final guardedValue = map['filterColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      treeAhConfig: (() { final guardedValue = map['treeAhConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
