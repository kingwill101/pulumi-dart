// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_view_vector_search_config_tree_ahconfig_response.dart';

/// Configuration for vector search.
class GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse {
  /// Optional. Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search.
  final pulumi.Input<Map<String, dynamic>> bruteForceConfig;
  /// Optional. Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k' of the k neighbors returned have the same value of crowding_attribute.
  final pulumi.Input<String> crowdingColumn;
  /// Optional. The distance measure used in nearest neighbor search.
  final pulumi.Input<String> distanceMeasureType;
  /// Optional. Column of embedding. This column contains the source data to create index for vector search. embedding_column must be set when using vector search.
  final pulumi.Input<String> embeddingColumn;
  /// Optional. The number of dimensions of the input embedding.
  final pulumi.Input<int> embeddingDimension;
  /// Optional. Columns of features that're used to filter vector search results.
  final pulumi.Input<List<String>> filterColumns;
  /// Optional. Configuration options for the tree-AH algorithm (Shallow tree + Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfigResponse> treeAhConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse].
  /// [bruteForceConfig] Optional. Configuration options for using brute force search, which simply implements the standard linear search in the database for each query. It is primarily meant for benchmarking and to generate the ground truth for approximate search.
  /// [crowdingColumn] Optional. Column of crowding. This column contains crowding attribute which is a constraint on a neighbor list produced by nearest neighbor search requiring that no more than some value k' of the k neighbors returned have the same value of crowding_attribute.
  /// [distanceMeasureType] Optional. The distance measure used in nearest neighbor search.
  /// [embeddingColumn] Optional. Column of embedding. This column contains the source data to create index for vector search. embedding_column must be set when using vector search.
  /// [embeddingDimension] Optional. The number of dimensions of the input embedding.
  /// [filterColumns] Optional. Columns of features that're used to filter vector search results.
  /// [treeAhConfig] Optional. Configuration options for the tree-AH algorithm (Shallow tree + Asymmetric Hashing). Please refer to this paper for more details: https://arxiv.org/abs/1908.10396
  const GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse({
    required this.bruteForceConfig,
    required this.crowdingColumn,
    required this.distanceMeasureType,
    required this.embeddingColumn,
    required this.embeddingDimension,
    required this.filterColumns,
    required this.treeAhConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bruteForceConfig': bruteForceConfig,
      'crowdingColumn': crowdingColumn,
      'distanceMeasureType': distanceMeasureType,
      'embeddingColumn': embeddingColumn,
      'embeddingDimension': embeddingDimension,
      'filterColumns': filterColumns,
      'treeAhConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfigResponse, Map<String, dynamic>>(treeAhConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigResponse(
      bruteForceConfig: pulumi.Input.fromValue((map['bruteForceConfig']! as Map).cast<String, dynamic>()),
      crowdingColumn: pulumi.Input.fromValue(map['crowdingColumn'] as String),
      distanceMeasureType: pulumi.Input.fromValue(map['distanceMeasureType'] as String),
      embeddingColumn: pulumi.Input.fromValue(map['embeddingColumn'] as String),
      embeddingDimension: pulumi.Input.fromValue(map['embeddingDimension'] as int),
      filterColumns: pulumi.Input.fromValue((map['filterColumns'] as List).cast<String>()),
      treeAhConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigTreeAHConfigResponse.fromMap((map['treeAhConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
