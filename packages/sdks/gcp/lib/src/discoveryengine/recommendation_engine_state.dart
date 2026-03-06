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
  const RecommendationEngineState({
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
      commonConfig: (() { final guardedValue = map['commonConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecommendationEngineCommonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataStoreIds: (() { final guardedValue = map['dataStoreIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineId: (() { final guardedValue = map['engineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      industryVertical: (() { final guardedValue = map['industryVertical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mediaRecommendationEngineConfig: (() { final guardedValue = map['mediaRecommendationEngineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecommendationEngineMediaRecommendationEngineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

