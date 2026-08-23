// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_store_advanced_site_search_config.dart';
import 'get_data_store_document_processing_config.dart';

/// Result data returned by getDataStore.
class GetDataStoreResult {
  final bool aclEnabled;
  final List<GetDataStoreAdvancedSiteSearchConfig> advancedSiteSearchConfigs;
  final String contentConfig;
  final bool createAdvancedSiteSearch;
  final String createTime;
  final String? dataStoreId;
  final String defaultSchemaId;
  final String deletionPolicy;
  final String? displayName;
  final List<GetDataStoreDocumentProcessingConfig> documentProcessingConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String industryVertical;
  final String kmsKeyName;
  final String? location;
  final String name;
  final String? project;
  final bool skipDefaultSchemaCreation;
  final List<String> solutionTypes;

  /// Creates a new [GetDataStoreResult].
  /// [aclEnabled] Required.
  /// [advancedSiteSearchConfigs] Required.
  /// [contentConfig] Required.
  /// [createAdvancedSiteSearch] Required.
  /// [createTime] Required.
  /// [dataStoreId] Optional.
  /// [defaultSchemaId] Required.
  /// [deletionPolicy] Required.
  /// [displayName] Optional.
  /// [documentProcessingConfigs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [industryVertical] Required.
  /// [kmsKeyName] Required.
  /// [location] Optional.
  /// [name] Required.
  /// [project] Optional.
  /// [skipDefaultSchemaCreation] Required.
  /// [solutionTypes] Required.
  const GetDataStoreResult({
    required this.aclEnabled,
    required this.advancedSiteSearchConfigs,
    required this.contentConfig,
    required this.createAdvancedSiteSearch,
    required this.createTime,
    this.dataStoreId,
    required this.defaultSchemaId,
    required this.deletionPolicy,
    this.displayName,
    required this.documentProcessingConfigs,
    required this.id,
    required this.industryVertical,
    required this.kmsKeyName,
    this.location,
    required this.name,
    this.project,
    required this.skipDefaultSchemaCreation,
    required this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEnabled': aclEnabled,
      'advancedSiteSearchConfigs': pulumi.Input.encodeList<GetDataStoreAdvancedSiteSearchConfig, Map<String, dynamic>>(advancedSiteSearchConfigs, (value) => value.toMap()),
      'contentConfig': contentConfig,
      'createAdvancedSiteSearch': createAdvancedSiteSearch,
      'createTime': createTime,
      'dataStoreId': ?dataStoreId,
      'defaultSchemaId': defaultSchemaId,
      'deletionPolicy': deletionPolicy,
      'displayName': ?displayName,
      'documentProcessingConfigs': pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfig, Map<String, dynamic>>(documentProcessingConfigs, (value) => value.toMap()),
      'id': id,
      'industryVertical': industryVertical,
      'kmsKeyName': kmsKeyName,
      'location': ?location,
      'name': name,
      'project': ?project,
      'skipDefaultSchemaCreation': skipDefaultSchemaCreation,
      'solutionTypes': solutionTypes,
    };
  }

  factory GetDataStoreResult.fromMap(Map<String, dynamic> map) {
    return GetDataStoreResult(
      aclEnabled: map['aclEnabled'] as bool,
      advancedSiteSearchConfigs: pulumi.Input.decodeList<GetDataStoreAdvancedSiteSearchConfig>(map['advancedSiteSearchConfigs']!, (value) => GetDataStoreAdvancedSiteSearchConfig.fromMap((value as Map).cast<String, dynamic>())),
      contentConfig: map['contentConfig'] as String,
      createAdvancedSiteSearch: map['createAdvancedSiteSearch'] as bool,
      createTime: map['createTime'] as String,
      dataStoreId: (() { final guardedValue = map['dataStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSchemaId: map['defaultSchemaId'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentProcessingConfigs: pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfig>(map['documentProcessingConfigs']!, (value) => GetDataStoreDocumentProcessingConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      industryVertical: map['industryVertical'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skipDefaultSchemaCreation: map['skipDefaultSchemaCreation'] as bool,
      solutionTypes: (map['solutionTypes'] as List).cast<String>(),
    );
  }
}
