// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_engine_common_config.dart';
import 'search_engine_search_engine_config.dart';

/// {@template pulumi_discoveryengine_search_engine_search_engine_args_doc}
/// The set of arguments for SearchEngine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_search_engine_search_engine_args_doc}
class SearchEngineArgs {
  /// This is the application type this engine resource represents.
  /// The supported values: 'APP_TYPE_UNSPECIFIED', 'APP_TYPE_INTRANET'.
  final pulumi.Input<String>? appType;
  /// The collection ID.
  final pulumi.Input<String> collectionId;
  /// Common config spec that specifies the metadata of the engine.
  /// Structure is documented below.
  final pulumi.Input<SearchEngineCommonConfig>? commonConfig;
  /// The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  final pulumi.Input<List<String>> dataStoreIds;
  /// Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;
  /// Unique ID to use for Search Engine App.
  final pulumi.Input<String> engineId;
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
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configurations for a Search Engine.
  /// Structure is documented below.
  final pulumi.Input<SearchEngineSearchEngineConfig> searchEngineConfig;

  /// Creates a new [SearchEngineArgs].
  /// [appType] This is the application type this engine resource represents.
  /// [collectionId] The collection ID.
  /// [commonConfig] Common config spec that specifies the metadata of the engine.
  /// [dataStoreIds] The data stores associated with this engine. For SOLUTION_TYPE_SEARCH type of engines, they can only associate with at most one data store.
  /// [displayName] Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  /// [engineId] Unique ID to use for Search Engine App.
  /// [features] A map of the feature config for the engine to opt in or opt out of features.
  /// [industryVertical] The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to GENERIC. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
  /// [kmsKeyName] The KMS key to be used to protect this Engine at creation time.
  /// [location] Location.
  /// [project] The ID of the project in which the resource belongs.
  /// [searchEngineConfig] Configurations for a Search Engine.
  const SearchEngineArgs({
    this.appType,
    required this.collectionId,
    this.commonConfig,
    required this.dataStoreIds,
    required this.displayName,
    required this.engineId,
    this.features,
    this.industryVertical,
    this.kmsKeyName,
    required this.location,
    this.project,
    required this.searchEngineConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appType': ?appType,
      'collectionId': collectionId,
      'commonConfig': ?pulumi.Input.mapOptionalInputValue<SearchEngineCommonConfig, Map<String, dynamic>>(commonConfig, (value) => value.toMap()),
      'dataStoreIds': dataStoreIds,
      'displayName': displayName,
      'engineId': engineId,
      'features': ?features,
      'industryVertical': ?industryVertical,
      'kmsKeyName': ?kmsKeyName,
      'location': location,
      'project': ?project,
      'searchEngineConfig': pulumi.Input.mapInputValue<SearchEngineSearchEngineConfig, Map<String, dynamic>>(searchEngineConfig, (value) => value.toMap()),
    };
  }

  factory SearchEngineArgs.fromMap(Map<String, dynamic> map) {
    return SearchEngineArgs(
      appType: (() { final guardedValue = map['appType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      commonConfig: (() { final guardedValue = map['commonConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SearchEngineCommonConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStoreIds: pulumi.Input.fromValue((map['dataStoreIds'] as List).cast<String>()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      engineId: pulumi.Input.fromValue(map['engineId'] as String),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      industryVertical: (() { final guardedValue = map['industryVertical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchEngineConfig: pulumi.Input.fromValue(SearchEngineSearchEngineConfig.fromMap((map['searchEngineConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

