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
    pulumi.Output<String>? appType,
    pulumi.Output<String>? collectionId,
    pulumi.Output<SearchEngineCommonConfig>? commonConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<String>>? dataStoreIds,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? engineId,
    pulumi.Output<Map<String, String>>? features,
    pulumi.Output<String>? industryVertical,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<SearchEngineSearchEngineConfig>? searchEngineConfig,
    pulumi.Output<String>? updateTime,
  }) :
      appType = pulumi.Input.asOptionalInput<String>(appType),
      collectionId = pulumi.Input.asOptionalInput<String>(collectionId),
      commonConfig = pulumi.Input.asOptionalInput<SearchEngineCommonConfig>(commonConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataStoreIds = pulumi.Input.asOptionalInput<List<String>>(dataStoreIds),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      engineId = pulumi.Input.asOptionalInput<String>(engineId),
      features = pulumi.Input.asOptionalInput<Map<String, String>>(features),
      industryVertical = pulumi.Input.asOptionalInput<String>(industryVertical),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      searchEngineConfig = pulumi.Input.asOptionalInput<SearchEngineSearchEngineConfig>(searchEngineConfig),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      appType: map['appType'] == null ? null : pulumi.Output.create<String>(map['appType'] as String),
      collectionId: map['collectionId'] == null ? null : pulumi.Output.create<String>(map['collectionId'] as String),
      commonConfig: map['commonConfig'] == null ? null : pulumi.Output.create<SearchEngineCommonConfig>(SearchEngineCommonConfig.fromMap((map['commonConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataStoreIds: map['dataStoreIds'] == null ? null : pulumi.Output.create<List<String>>((map['dataStoreIds'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      engineId: map['engineId'] == null ? null : pulumi.Output.create<String>(map['engineId'] as String),
      features: map['features'] == null ? null : pulumi.Output.create<Map<String, String>>((map['features'] as Map).cast<String, String>()),
      industryVertical: map['industryVertical'] == null ? null : pulumi.Output.create<String>(map['industryVertical'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      searchEngineConfig: map['searchEngineConfig'] == null ? null : pulumi.Output.create<SearchEngineSearchEngineConfig>(SearchEngineSearchEngineConfig.fromMap((map['searchEngineConfig'] as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

