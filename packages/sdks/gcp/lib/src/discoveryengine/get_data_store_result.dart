// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_store_advanced_site_search_config.dart';
import 'get_data_store_document_processing_config.dart';

/// Result data returned by getDataStore.
class GetDataStoreResult {
  final bool? aclEnabled;
  final List<GetDataStoreAdvancedSiteSearchConfig>? advancedSiteSearchConfigs;
  final String? contentConfig;
  final bool? createAdvancedSiteSearch;
  final String? createTime;
  final String? dataStoreId;
  final String? defaultSchemaId;
  final String? deletionPolicy;
  final String? displayName;
  final List<GetDataStoreDocumentProcessingConfig>? documentProcessingConfigs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? industryVertical;
  final String? kmsKeyName;
  final String? location;
  final String? name;
  final String? project;
  final bool? skipDefaultSchemaCreation;
  final List<String>? solutionTypes;

  /// Creates a new [GetDataStoreResult].
  /// [aclEnabled] Optional.
  /// [advancedSiteSearchConfigs] Optional.
  /// [contentConfig] Optional.
  /// [createAdvancedSiteSearch] Optional.
  /// [createTime] Optional.
  /// [dataStoreId] Optional.
  /// [defaultSchemaId] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [documentProcessingConfigs] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [industryVertical] Optional.
  /// [kmsKeyName] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [skipDefaultSchemaCreation] Optional.
  /// [solutionTypes] Optional.
  const GetDataStoreResult({
    this.aclEnabled,
    this.advancedSiteSearchConfigs,
    this.contentConfig,
    this.createAdvancedSiteSearch,
    this.createTime,
    this.dataStoreId,
    this.defaultSchemaId,
    this.deletionPolicy,
    this.displayName,
    this.documentProcessingConfigs,
    this.id,
    this.industryVertical,
    this.kmsKeyName,
    this.location,
    this.name,
    this.project,
    this.skipDefaultSchemaCreation,
    this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEnabled': ?aclEnabled,
      'advancedSiteSearchConfigs': ?(() { final guardedValue = advancedSiteSearchConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataStoreAdvancedSiteSearchConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'contentConfig': ?contentConfig,
      'createAdvancedSiteSearch': ?createAdvancedSiteSearch,
      'createTime': ?createTime,
      'dataStoreId': ?dataStoreId,
      'defaultSchemaId': ?defaultSchemaId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'documentProcessingConfigs': ?(() { final guardedValue = documentProcessingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataStoreDocumentProcessingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'industryVertical': ?industryVertical,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'skipDefaultSchemaCreation': ?skipDefaultSchemaCreation,
      'solutionTypes': ?solutionTypes,
    };
  }

  factory GetDataStoreResult.fromMap(Map<String, dynamic> map) {
    return GetDataStoreResult(
      aclEnabled: (() { final guardedValue = map['aclEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      advancedSiteSearchConfigs: (() { final guardedValue = map['advancedSiteSearchConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataStoreAdvancedSiteSearchConfig>(guardedValue, (value) => GetDataStoreAdvancedSiteSearchConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      contentConfig: (() { final guardedValue = map['contentConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createAdvancedSiteSearch: (() { final guardedValue = map['createAdvancedSiteSearch']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataStoreId: (() { final guardedValue = map['dataStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSchemaId: (() { final guardedValue = map['defaultSchemaId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentProcessingConfigs: (() { final guardedValue = map['documentProcessingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataStoreDocumentProcessingConfig>(guardedValue, (value) => GetDataStoreDocumentProcessingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      industryVertical: (() { final guardedValue = map['industryVertical']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skipDefaultSchemaCreation: (() { final guardedValue = map['skipDefaultSchemaCreation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      solutionTypes: (() { final guardedValue = map['solutionTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
