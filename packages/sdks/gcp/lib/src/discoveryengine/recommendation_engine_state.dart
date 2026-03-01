// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommendation_engine_common_config.dart';
import 'recommendation_engine_media_recommendation_engine_config.dart';

/// Input properties used for looking up and filtering RecommendationEngine resources.
class RecommendationEngineState {
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final pulumi.Input<RecommendationEngineCommonConfig>? commonConfig;
  /// Timestamp the Engine was created at.
  final pulumi.Input<String>? createTime;
  /// The data stores associated with this engine. For SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store.
  final pulumi.Input<List<String>>? dataStoreIds;
  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String>? displayName;
  /// Unique ID to use for Recommendation Engine.
  final pulumi.Input<String>? engineId;
  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`.
  final pulumi.Input<String>? industryVertical;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// Configurations for a Media Recommendation Engine. Only applicable on the data stores
  /// with SOLUTION_TYPE_RECOMMENDATION solution type and MEDIA industry vertical.
  /// Structure is documented below.
  final pulumi.Input<RecommendationEngineMediaRecommendationEngineConfig>? mediaRecommendationEngineConfig;
  /// The unique full resource name of the recommendation engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Timestamp the Engine was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RecommendationEngineState].
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [createTime] Timestamp the Engine was created at.
  /// [dataStoreIds] The data stores associated with this engine. For SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store.
  /// [displayName] Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] Unique ID to use for Recommendation Engine.
  /// [industryVertical] The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// [location] The geographic location where the data store should reside. The value can
  /// [mediaRecommendationEngineConfig] Configurations for a Media Recommendation Engine. Only applicable on the data stores
  /// [name] The unique full resource name of the recommendation engine. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Timestamp the Engine was last updated.
  RecommendationEngineState({
    pulumi.Output<RecommendationEngineCommonConfig>? commonConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<String>>? dataStoreIds,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? engineId,
    pulumi.Output<String>? industryVertical,
    pulumi.Output<String>? location,
    pulumi.Output<RecommendationEngineMediaRecommendationEngineConfig>? mediaRecommendationEngineConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
  }) :
      commonConfig = pulumi.Input.asOptionalInput<RecommendationEngineCommonConfig>(commonConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataStoreIds = pulumi.Input.asOptionalInput<List<String>>(dataStoreIds),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      engineId = pulumi.Input.asOptionalInput<String>(engineId),
      industryVertical = pulumi.Input.asOptionalInput<String>(industryVertical),
      location = pulumi.Input.asOptionalInput<String>(location),
      mediaRecommendationEngineConfig = pulumi.Input.asOptionalInput<RecommendationEngineMediaRecommendationEngineConfig>(mediaRecommendationEngineConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonConfig': ?pulumi.Input.mapOptionalInputValue<RecommendationEngineCommonConfig, Map<String, dynamic>>(commonConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'dataStoreIds': ?dataStoreIds,
      'displayName': ?displayName,
      'engineId': ?engineId,
      'industryVertical': ?industryVertical,
      'location': ?location,
      'mediaRecommendationEngineConfig': ?pulumi.Input.mapOptionalInputValue<RecommendationEngineMediaRecommendationEngineConfig, Map<String, dynamic>>(mediaRecommendationEngineConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory RecommendationEngineState.fromMap(Map<String, dynamic> map) {
    return RecommendationEngineState(
      commonConfig: map['commonConfig'] == null ? null : pulumi.Output.create<RecommendationEngineCommonConfig>(RecommendationEngineCommonConfig.fromMap((map['commonConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataStoreIds: map['dataStoreIds'] == null ? null : pulumi.Output.create<List<String>>((map['dataStoreIds'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      engineId: map['engineId'] == null ? null : pulumi.Output.create<String>(map['engineId'] as String),
      industryVertical: map['industryVertical'] == null ? null : pulumi.Output.create<String>(map['industryVertical'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mediaRecommendationEngineConfig: map['mediaRecommendationEngineConfig'] == null ? null : pulumi.Output.create<RecommendationEngineMediaRecommendationEngineConfig>(RecommendationEngineMediaRecommendationEngineConfig.fromMap((map['mediaRecommendationEngineConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

