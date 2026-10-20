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
  final GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse? chatEngineConfig;
  /// Additional information of the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  final GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse? chatEngineMetadata;
  /// Common config spec that specifies the metadata of the engine.
  final GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse? commonConfig;
  /// Timestamp the Recommendation Engine was created at.
  final String? createTime;
  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary intializations.
  final List<String>? dataStoreIds;
  /// The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final String? displayName;
  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  final String? industryVertical;
  /// Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTION_TYPE_RECOMMENDATION and IndustryVertical.MEDIA vertical.
  final GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigResponse? mediaRecommendationEngineConfig;
  /// Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project_number}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  final String? name;
  /// Additional information of a recommendation engine. Only applicable if solution_type is SOLUTION_TYPE_RECOMMENDATION.
  final GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse? recommendationMetadata;
  /// Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  final GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse? searchEngineConfig;
  /// Additional config specs for a `similar-items` engine.
  final Map<String, dynamic>? similarDocumentsConfig;
  /// The solutions of the engine.
  final String? solutionType;
  /// Timestamp the Recommendation Engine was last updated.
  final String? updateTime;

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
    this.chatEngineConfig,
    this.chatEngineMetadata,
    this.commonConfig,
    this.createTime,
    this.dataStoreIds,
    this.displayName,
    this.industryVertical,
    this.mediaRecommendationEngineConfig,
    this.name,
    this.recommendationMetadata,
    this.searchEngineConfig,
    this.similarDocumentsConfig,
    this.solutionType,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatEngineConfig': ?chatEngineConfig?.toMap(),
      'chatEngineMetadata': ?chatEngineMetadata?.toMap(),
      'commonConfig': ?commonConfig?.toMap(),
      'createTime': ?createTime,
      'dataStoreIds': ?dataStoreIds,
      'displayName': ?displayName,
      'industryVertical': ?industryVertical,
      'mediaRecommendationEngineConfig': ?mediaRecommendationEngineConfig?.toMap(),
      'name': ?name,
      'recommendationMetadata': ?recommendationMetadata?.toMap(),
      'searchEngineConfig': ?searchEngineConfig?.toMap(),
      'similarDocumentsConfig': ?similarDocumentsConfig,
      'solutionType': ?solutionType,
      'updateTime': ?updateTime,
    };
  }

  factory GetEngineResult.fromMap(Map<String, dynamic> map) {
    return GetEngineResult(
      chatEngineConfig: (() { final guardedValue = map['chatEngineConfig']; if (guardedValue == null) return null; return GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      chatEngineMetadata: (() { final guardedValue = map['chatEngineMetadata']; if (guardedValue == null) return null; return GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      commonConfig: (() { final guardedValue = map['commonConfig']; if (guardedValue == null) return null; return GoogleCloudDiscoveryengineV1alphaEngineCommonConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataStoreIds: (() { final guardedValue = map['dataStoreIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      industryVertical: (() { final guardedValue = map['industryVertical']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mediaRecommendationEngineConfig: (() { final guardedValue = map['mediaRecommendationEngineConfig']; if (guardedValue == null) return null; return GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recommendationMetadata: (() { final guardedValue = map['recommendationMetadata']; if (guardedValue == null) return null; return GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      searchEngineConfig: (() { final guardedValue = map['searchEngineConfig']; if (guardedValue == null) return null; return GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      similarDocumentsConfig: (() { final guardedValue = map['similarDocumentsConfig']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      solutionType: (() { final guardedValue = map['solutionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
