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
    this.commonConfig,
    this.createTime,
    this.dataStoreIds,
    this.displayName,
    this.engineId,
    this.industryVertical,
    this.location,
    this.mediaRecommendationEngineConfig,
    this.name,
    this.project,
    this.updateTime,
  });

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
      commonConfig: map['commonConfig'] == null ? null : (RecommendationEngineCommonConfig.fromMap((map['commonConfig'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dataStoreIds: map['dataStoreIds'] == null ? null : ((map['dataStoreIds'] as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      engineId: map['engineId'] == null ? null : (map['engineId'] as String).input(),
      industryVertical: map['industryVertical'] == null ? null : (map['industryVertical'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mediaRecommendationEngineConfig: map['mediaRecommendationEngineConfig'] == null ? null : (RecommendationEngineMediaRecommendationEngineConfig.fromMap((map['mediaRecommendationEngineConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

