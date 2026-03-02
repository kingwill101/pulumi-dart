// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_engine_common_config.dart';
import 'search_engine_search_engine_config.dart';

/// Input properties used for looking up and filtering SearchEngine resources.
class SearchEngineState {
  /// This is the application type this engine resource represents.
  /// The supported values: 'APP_TYPE_UNSPECIFIED', 'APP_TYPE_INTRANET'.
  final pulumi.Input<String>? appType;
  /// The collection ID.
  final pulumi.Input<String>? collectionId;
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final pulumi.Input<SearchEngineCommonConfig>? commonConfig;
  /// Timestamp the Engine was created at.
  final pulumi.Input<String>? createTime;
  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  final pulumi.Input<List<String>>? dataStoreIds;
  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String>? displayName;
  /// Unique ID to use for Search Engine App.
  final pulumi.Input<String>? engineId;
  /// A map of the feature config for the engine to opt in or opt out of features.
  final pulumi.Input<Map<String, String>>? features;
  /// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// Default value is `GENERIC`.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  final pulumi.Input<String>? industryVertical;
  /// The KMS key to be used to protect this Engine at creation time.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the Engine will be
  /// protected by the KMS key, as indicated in the cmek_config field.
  final pulumi.Input<String>? kmsKeyName;
  /// Location.
  final pulumi.Input<String>? location;
  /// The unique full resource name of the search engine. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configurations for a Search Engine.
  /// Structure is documented below.
  final pulumi.Input<SearchEngineSearchEngineConfig>? searchEngineConfig;
  /// Timestamp the Engine was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SearchEngineState].
  /// [appType] This is the application type this engine resource represents.
  /// [collectionId] The collection ID.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [createTime] Timestamp the Engine was created at.
  /// [dataStoreIds] The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  /// [displayName] Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] Unique ID to use for Search Engine App.
  /// [features] A map of the feature config for the engine to opt in or opt out of features.
  /// [industryVertical] The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// [kmsKeyName] The KMS key to be used to protect this Engine at creation time.
  /// [location] Location.
  /// [name] The unique full resource name of the search engine. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [searchEngineConfig] Configurations for a Search Engine.
  /// [updateTime] Timestamp the Engine was last updated.
  SearchEngineState({
    this.appType,
    this.collectionId,
    this.commonConfig,
    this.createTime,
    this.dataStoreIds,
    this.displayName,
    this.engineId,
    this.features,
    this.industryVertical,
    this.kmsKeyName,
    this.location,
    this.name,
    this.project,
    this.searchEngineConfig,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appType': ?appType,
      'collectionId': ?collectionId,
      'commonConfig': ?pulumi.Input.mapOptionalInputValue<SearchEngineCommonConfig, Map<String, dynamic>>(commonConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'dataStoreIds': ?dataStoreIds,
      'displayName': ?displayName,
      'engineId': ?engineId,
      'features': ?features,
      'industryVertical': ?industryVertical,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'searchEngineConfig': ?pulumi.Input.mapOptionalInputValue<SearchEngineSearchEngineConfig, Map<String, dynamic>>(searchEngineConfig, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory SearchEngineState.fromMap(Map<String, dynamic> map) {
    return SearchEngineState(
      appType: map['appType'] == null ? null : (map['appType'] as String).input(),
      collectionId: map['collectionId'] == null ? null : (map['collectionId'] as String).input(),
      commonConfig: map['commonConfig'] == null ? null : (SearchEngineCommonConfig.fromMap((map['commonConfig'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dataStoreIds: map['dataStoreIds'] == null ? null : ((map['dataStoreIds'] as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      engineId: map['engineId'] == null ? null : (map['engineId'] as String).input(),
      features: map['features'] == null ? null : ((map['features'] as Map).cast<String, String>()).input(),
      industryVertical: map['industryVertical'] == null ? null : (map['industryVertical'] as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      searchEngineConfig: map['searchEngineConfig'] == null ? null : (SearchEngineSearchEngineConfig.fromMap((map['searchEngineConfig'] as Map).cast<String, dynamic>())).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

