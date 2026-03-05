// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_advanced_site_search_config.dart';
import 'data_store_document_processing_config.dart';

/// Input properties used for looking up and filtering DataStore resources.
class DataStoreState {
  /// Configuration data for advance site search.
  /// Structure is documented below.
  final pulumi.Input<DataStoreAdvancedSiteSearchConfig>? advancedSiteSearchConfig;
  /// The content config of the data store.
  /// Possible values are: `NO_CONTENT`, `CONTENT_REQUIRED`, `PUBLIC_WEBSITE`.
  final pulumi.Input<String>? contentConfig;
  /// If true, an advanced data store for site search will be created. If the
  /// data store is not configured as site search (GENERIC vertical and
  /// PUBLIC_WEBSITE contentConfig), this flag will be ignored.
  final pulumi.Input<bool>? createAdvancedSiteSearch;
  /// Timestamp when the DataStore was created.
  final pulumi.Input<String>? createTime;
  /// The unique id of the data store.
  final pulumi.Input<String>? dataStoreId;
  /// The id of the default Schema associated with this data store.
  final pulumi.Input<String>? defaultSchemaId;
  /// The display name of the data store. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  final pulumi.Input<String>? displayName;
  /// Configuration for Document understanding and enrichment.
  /// Structure is documented below.
  final pulumi.Input<DataStoreDocumentProcessingConfig>? documentProcessingConfig;
  /// The industry vertical that the data store registers.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  final pulumi.Input<String>? industryVertical;
  /// KMS key resource name which will be used to encrypt resources:
  /// `/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`
  /// The KMS key to be used to protect this DataStore at creation time. Must be
  /// set for requests that need to comply with CMEK Org Policy protections.
  /// If this field is set and processed successfully, the DataStore will be
  /// protected by the KMS key, as indicated in the cmek_config field.
  final pulumi.Input<String>? kmsKeyName;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// The unique full resource name of the data store. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A boolean flag indicating whether to skip the default schema creation for
  /// the data store. Only enable this flag if you are certain that the default
  /// schema is incompatible with your use case.
  /// If set to true, you must manually create a schema for the data store
  /// before any documents can be ingested.
  /// This flag cannot be specified if `data_store.starting_schema` is
  /// specified.
  final pulumi.Input<bool>? skipDefaultSchemaCreation;
  /// The solutions that the data store enrolls.
  /// Each value may be one of: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  final pulumi.Input<List<String>>? solutionTypes;

  /// Creates a new [DataStoreState].
  /// [advancedSiteSearchConfig] Configuration data for advance site search.
  /// [contentConfig] The content config of the data store.
  /// [createAdvancedSiteSearch] If true, an advanced data store for site search will be created. If the
  /// [createTime] Timestamp when the DataStore was created.
  /// [dataStoreId] The unique id of the data store.
  /// [defaultSchemaId] The id of the default Schema associated with this data store.
  /// [displayName] The display name of the data store. This field must be a UTF-8 encoded
  /// [documentProcessingConfig] Configuration for Document understanding and enrichment.
  /// [industryVertical] The industry vertical that the data store registers.
  /// [kmsKeyName] KMS key resource name which will be used to encrypt resources:
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the data store. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [skipDefaultSchemaCreation] A boolean flag indicating whether to skip the default schema creation for
  /// [solutionTypes] The solutions that the data store enrolls.
  DataStoreState({
    this.advancedSiteSearchConfig,
    this.contentConfig,
    this.createAdvancedSiteSearch,
    this.createTime,
    this.dataStoreId,
    this.defaultSchemaId,
    this.displayName,
    this.documentProcessingConfig,
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
      'advancedSiteSearchConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreAdvancedSiteSearchConfig, Map<String, dynamic>>(advancedSiteSearchConfig, (value) => value.toMap()),
      'contentConfig': ?contentConfig,
      'createAdvancedSiteSearch': ?createAdvancedSiteSearch,
      'createTime': ?createTime,
      'dataStoreId': ?dataStoreId,
      'defaultSchemaId': ?defaultSchemaId,
      'displayName': ?displayName,
      'documentProcessingConfig': ?pulumi.Input.mapOptionalInputValue<DataStoreDocumentProcessingConfig, Map<String, dynamic>>(documentProcessingConfig, (value) => value.toMap()),
      'industryVertical': ?industryVertical,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'skipDefaultSchemaCreation': ?skipDefaultSchemaCreation,
      'solutionTypes': ?solutionTypes,
    };
  }

  factory DataStoreState.fromMap(Map<String, dynamic> map) {
    return DataStoreState(
      advancedSiteSearchConfig: (() { final guardedValue = map['advancedSiteSearchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataStoreAdvancedSiteSearchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentConfig: (() { final guardedValue = map['contentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAdvancedSiteSearch: (() { final guardedValue = map['createAdvancedSiteSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataStoreId: (() { final guardedValue = map['dataStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultSchemaId: (() { final guardedValue = map['defaultSchemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentProcessingConfig: (() { final guardedValue = map['documentProcessingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataStoreDocumentProcessingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      industryVertical: (() { final guardedValue = map['industryVertical']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDefaultSchemaCreation: (() { final guardedValue = map['skipDefaultSchemaCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      solutionTypes: (() { final guardedValue = map['solutionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

