// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_metadata_config_algorithm_config.dart';

class AiIndexMetadataConfig {
  /// The configuration with regard to the algorithms used for efficient search. This field may be required based on your configuration.
  /// Structure is documented below.
  final pulumi.Input<AiIndexMetadataConfigAlgorithmConfig>? algorithmConfig;

  /// The default number of neighbors to find via approximate search before exact reordering is
  /// performed. Exact reordering is a procedure where results returned by an
  /// approximate search algorithm are reordered via a more expensive distance computation.
  /// Required if tree-AH algorithm is used.
  final pulumi.Input<int>? approximateNeighborsCount;

  /// The number of dimensions of the input vectors.
  final pulumi.Input<int> dimensions;

  /// The distance measure used in nearest neighbor search. The value must be one of the followings:
  /// * SQUARED_L2_DISTANCE: Euclidean (L_2) Distance
  /// * L1_DISTANCE: Manhattan (L_1) Distance
  /// * COSINE_DISTANCE: Cosine Distance. Defined as 1 - cosine similarity.
  /// * DOT_PRODUCT_DISTANCE: Dot Product Distance. Defined as a negative of the dot product
  final pulumi.Input<String>? distanceMeasureType;

  /// Type of normalization to be carried out on each vector. The value must be one of the followings:
  /// * UNIT_L2_NORM: Unit L2 normalization type
  /// * NONE: No normalization type is specified.
  final pulumi.Input<String>? featureNormType;

  /// Index data is split into equal parts to be processed. These are called "shards".
  /// The shard size must be specified when creating an index. The value must be one of the followings:
  /// * SHARD_SIZE_SMALL: Small (2GB)
  /// * SHARD_SIZE_MEDIUM: Medium (20GB)
  /// * SHARD_SIZE_LARGE: Large (50GB)
  final pulumi.Input<String>? shardSize;

  /// Creates a new [AiIndexMetadataConfig].
  /// [algorithmConfig] The configuration with regard to the algorithms used for efficient search. This field may be required based on your configuration.
  /// [approximateNeighborsCount] The default number of neighbors to find via approximate search before exact reordering is
  /// [dimensions] The number of dimensions of the input vectors.
  /// [distanceMeasureType] The distance measure used in nearest neighbor search. The value must be one of the followings:
  /// [featureNormType] Type of normalization to be carried out on each vector. The value must be one of the followings:
  /// [shardSize] Index data is split into equal parts to be processed. These are called "shards".
  AiIndexMetadataConfig({
    this.algorithmConfig,
    this.approximateNeighborsCount,
    required this.dimensions,
    this.distanceMeasureType,
    this.featureNormType,
    this.shardSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithmConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AiIndexMetadataConfigAlgorithmConfig,
            Map<String, dynamic>
          >(algorithmConfig, (value) => value.toMap()),
      'approximateNeighborsCount': ?approximateNeighborsCount,
      'dimensions': dimensions,
      'distanceMeasureType': ?distanceMeasureType,
      'featureNormType': ?featureNormType,
      'shardSize': ?shardSize,
    };
  }

  factory AiIndexMetadataConfig.fromMap(Map<String, dynamic> map) {
    return AiIndexMetadataConfig(
      algorithmConfig: (() {
        final guardedValue = map['algorithmConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AiIndexMetadataConfigAlgorithmConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      approximateNeighborsCount: (() {
        final guardedValue = map['approximateNeighborsCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dimensions: pulumi.Input.fromValue(map['dimensions'] as int),
      distanceMeasureType: (() {
        final guardedValue = map['distanceMeasureType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      featureNormType: (() {
        final guardedValue = map['featureNormType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shardSize: (() {
        final guardedValue = map['shardSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
