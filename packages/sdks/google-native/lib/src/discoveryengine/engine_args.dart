// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_industry_vertical.dart';
import 'engine_solution_type.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_common_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config.dart';

/// {@template pulumi_discoveryengine_v1alpha_engine_args_doc}
/// The set of arguments for Engine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_engine_args_doc}
class EngineArgs {
  /// Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig>? chatEngineConfig;
  final pulumi.Input<String> collectionId;
  /// Common config spec that specifies the metadata of the engine.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineCommonConfig>? commonConfig;
  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  final pulumi.Input<List<String>>? dataStoreIds;
  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;
  /// Required. The ID to use for the Engine, which will become the final component of the Engine's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String> engineId;
  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  final pulumi.Input<EngineIndustryVertical>? industryVertical;
  final pulumi.Input<String>? location;
  /// Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig>? mediaRecommendationEngineConfig;
  /// Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig>? searchEngineConfig;
  /// Additional config specs for a `similar-items` engine.
  final pulumi.Input<Map<String, dynamic>>? similarDocumentsConfig;
  /// The solutions of the engine.
  final pulumi.Input<EngineSolutionType> solutionType;

  /// Creates a new [EngineArgs].
  /// [chatEngineConfig] Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  /// [collectionId] Required.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [dataStoreIds] The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  /// [displayName] The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] Required. The ID to use for the Engine, which will become the final component of the Engine's resource name. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [industryVertical] The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// [location] Optional.
  /// [mediaRecommendationEngineConfig] Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  /// [name] Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [project] Optional.
  /// [searchEngineConfig] Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  /// [similarDocumentsConfig] Additional config specs for a `similar-items` engine.
  /// [solutionType] The solutions of the engine.
  EngineArgs({
    this.chatEngineConfig,
    required this.collectionId,
    this.commonConfig,
    this.dataStoreIds,
    required this.displayName,
    required this.engineId,
    this.industryVertical,
    this.location,
    this.mediaRecommendationEngineConfig,
    this.name,
    this.project,
    this.searchEngineConfig,
    this.similarDocumentsConfig,
    required this.solutionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatEngineConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig, Map<String, dynamic>>(chatEngineConfig, (value) => value.toMap()),
      'collectionId': collectionId,
      'commonConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaEngineCommonConfig, Map<String, dynamic>>(commonConfig, (value) => value.toMap()),
      'dataStoreIds': ?dataStoreIds,
      'displayName': displayName,
      'engineId': engineId,
      'industryVertical': ?pulumi.Input.mapOptionalInputValue<EngineIndustryVertical, String>(industryVertical, (value) => value.value),
      'location': ?location,
      'mediaRecommendationEngineConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig, Map<String, dynamic>>(mediaRecommendationEngineConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'searchEngineConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig, Map<String, dynamic>>(searchEngineConfig, (value) => value.toMap()),
      'similarDocumentsConfig': ?similarDocumentsConfig,
      'solutionType': pulumi.Input.mapInputValue<EngineSolutionType, String>(solutionType, (value) => value.value),
    };
  }

  factory EngineArgs.fromMap(Map<String, dynamic> map) {
    return EngineArgs(
      chatEngineConfig: map['chatEngineConfig'] == null ? null : (GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig.fromMap((map['chatEngineConfig'] as Map).cast<String, dynamic>())).input(),
      collectionId: (map['collectionId'] as String).input(),
      commonConfig: map['commonConfig'] == null ? null : (GoogleCloudDiscoveryengineV1alphaEngineCommonConfig.fromMap((map['commonConfig'] as Map).cast<String, dynamic>())).input(),
      dataStoreIds: map['dataStoreIds'] == null ? null : ((map['dataStoreIds'] as List).cast<String>()).input(),
      displayName: (map['displayName'] as String).input(),
      engineId: (map['engineId'] as String).input(),
      industryVertical: map['industryVertical'] == null ? null : (EngineIndustryVertical.fromValue(map['industryVertical'] as String)).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mediaRecommendationEngineConfig: map['mediaRecommendationEngineConfig'] == null ? null : (GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig.fromMap((map['mediaRecommendationEngineConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      searchEngineConfig: map['searchEngineConfig'] == null ? null : (GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig.fromMap((map['searchEngineConfig'] as Map).cast<String, dynamic>())).input(),
      similarDocumentsConfig: map['similarDocumentsConfig'] == null ? null : ((map['similarDocumentsConfig'] as Map).cast<String, dynamic>()).input(),
      solutionType: (EngineSolutionType.fromValue(map['solutionType'] as String)).input(),
    );
  }
}

