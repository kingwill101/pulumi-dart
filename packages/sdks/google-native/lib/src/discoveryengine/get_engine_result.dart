// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_chat_engine_metadata_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_common_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_media_recommendation_engine_config_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_recommendation_metadata_response.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config_response.dart';

/// Result data returned by getEngine.
class GetEngineResult {
  /// Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  final GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse chatEngineConfig;
  /// Additional information of the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  final GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse chatEngineMetadata;
  /// Common config spec that specifies the metadata of the engine.
  final GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse commonConfig;
  /// Timestamp the Recommendation Engine was created at.
  final String createTime;
  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  final List<String> dataStoreIds;
  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final String displayName;
  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  final String industryVertical;
  /// Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  final GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigResponse mediaRecommendationEngineConfig;
  /// Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  final String name;
  /// Additional information of a recommendation engine. Only applicable if solution_type is SOLUTION_TYPE_RECOMMENDATION.
  final GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse recommendationMetadata;
  /// Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  final GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse searchEngineConfig;
  /// Additional config specs for a `similar-items` engine.
  final Map<String, dynamic> similarDocumentsConfig;
  /// The solutions of the engine.
  final String solutionType;
  /// Timestamp the Recommendation Engine was last updated.
  final String updateTime;

  /// Creates a new [GetEngineResult].
  /// [chatEngineConfig] Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  /// [chatEngineMetadata] Additional information of the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [createTime] Timestamp the Recommendation Engine was created at.
  /// [dataStoreIds] The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  /// [displayName] The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [industryVertical] The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// [mediaRecommendationEngineConfig] Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  /// [name] Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [recommendationMetadata] Additional information of a recommendation engine. Only applicable if solution_type is SOLUTION_TYPE_RECOMMENDATION.
  /// [searchEngineConfig] Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  /// [similarDocumentsConfig] Additional config specs for a `similar-items` engine.
  /// [solutionType] The solutions of the engine.
  /// [updateTime] Timestamp the Recommendation Engine was last updated.
  const GetEngineResult({
    required this.chatEngineConfig,
    required this.chatEngineMetadata,
    required this.commonConfig,
    required this.createTime,
    required this.dataStoreIds,
    required this.displayName,
    required this.industryVertical,
    required this.mediaRecommendationEngineConfig,
    required this.name,
    required this.recommendationMetadata,
    required this.searchEngineConfig,
    required this.similarDocumentsConfig,
    required this.solutionType,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatEngineConfig': chatEngineConfig.toMap(),
      'chatEngineMetadata': chatEngineMetadata.toMap(),
      'commonConfig': commonConfig.toMap(),
      'createTime': createTime,
      'dataStoreIds': dataStoreIds,
      'displayName': displayName,
      'industryVertical': industryVertical,
      'mediaRecommendationEngineConfig': mediaRecommendationEngineConfig.toMap(),
      'name': name,
      'recommendationMetadata': recommendationMetadata.toMap(),
      'searchEngineConfig': searchEngineConfig.toMap(),
      'similarDocumentsConfig': similarDocumentsConfig,
      'solutionType': solutionType,
      'updateTime': updateTime,
    };
  }

  factory GetEngineResult.fromMap(Map<String, dynamic> map) {
    return GetEngineResult(
      chatEngineConfig: GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse.fromMap((map['chatEngineConfig']! as Map).cast<String, dynamic>()),
      chatEngineMetadata: GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse.fromMap((map['chatEngineMetadata']! as Map).cast<String, dynamic>()),
      commonConfig: GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse.fromMap((map['commonConfig']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      dataStoreIds: (map['dataStoreIds'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      industryVertical: map['industryVertical'] as String,
      mediaRecommendationEngineConfig: GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigResponse.fromMap((map['mediaRecommendationEngineConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      recommendationMetadata: GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse.fromMap((map['recommendationMetadata']! as Map).cast<String, dynamic>()),
      searchEngineConfig: GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse.fromMap((map['searchEngineConfig']! as Map).cast<String, dynamic>()),
      similarDocumentsConfig: (map['similarDocumentsConfig']! as Map).cast<String, dynamic>(),
      solutionType: map['solutionType'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
