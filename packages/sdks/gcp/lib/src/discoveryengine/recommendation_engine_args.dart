// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommendation_engine_common_config.dart';
import 'recommendation_engine_media_recommendation_engine_config.dart';

/// {@template pulumi_discoveryengine_recommendation_engine_recommendation_engine_args_doc}
/// The set of arguments for RecommendationEngine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_recommendation_engine_recommendation_engine_args_doc}
class RecommendationEngineArgs {
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final pulumi.Input<RecommendationEngineCommonConfig>? commonConfig;
  /// The data stores associated with this engine. For SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store.
  final pulumi.Input<List<String>> dataStoreIds;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;
  /// Unique ID to use for Recommendation Engine.
  final pulumi.Input<String> engineId;
  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`.
  final pulumi.Input<String>? industryVertical;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// Configurations for a Media Recommendation Engine. Only applicable on the data stores
  /// with SOLUTION_TYPE_RECOMMENDATION solution type and MEDIA industry vertical.
  /// Structure is documented below.
  final pulumi.Input<RecommendationEngineMediaRecommendationEngineConfig>? mediaRecommendationEngineConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [RecommendationEngineArgs].
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [dataStoreIds] The data stores associated with this engine. For SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] Unique ID to use for Recommendation Engine.
  /// [industryVertical] The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// [location] The geographic location where the data store should reside. The value can
  /// [mediaRecommendationEngineConfig] Configurations for a Media Recommendation Engine. Only applicable on the data stores
  /// [project] The ID of the project in which the resource belongs.
  const RecommendationEngineArgs({
    this.commonConfig,
    required this.dataStoreIds,
    this.deletionPolicy,
    required this.displayName,
    required this.engineId,
    this.industryVertical,
    required this.location,
    this.mediaRecommendationEngineConfig,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonConfig': ?pulumi.Input.mapOptionalInputValue<RecommendationEngineCommonConfig, Map<String, dynamic>>(commonConfig, (value) => value.toMap()),
      'dataStoreIds': dataStoreIds,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'engineId': engineId,
      'industryVertical': ?industryVertical,
      'location': location,
      'mediaRecommendationEngineConfig': ?pulumi.Input.mapOptionalInputValue<RecommendationEngineMediaRecommendationEngineConfig, Map<String, dynamic>>(mediaRecommendationEngineConfig, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory RecommendationEngineArgs.fromMap(Map<String, dynamic> map) {
    return RecommendationEngineArgs(
      commonConfig: (() { final guardedValue = map['commonConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecommendationEngineCommonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStoreIds: pulumi.Input.fromValue((map['dataStoreIds'] as List).cast<String>()),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      industryVertical: (() { final guardedValue = map['industryVertical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mediaRecommendationEngineConfig: (() { final guardedValue = map['mediaRecommendationEngineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecommendationEngineMediaRecommendationEngineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
