// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolVersionToolDataStoreSpecDataStoreConnection {
  /// The full name of the referenced data store. Formats: projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore} projects/{project}/locations/{location}/dataStores/{dataStore}
  final pulumi.Input<String>? dataStore;
  /// The type of the connected data store.
  /// See [DataStoreType](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/DataStoreConnection#datastoretype) for valid values.
  final pulumi.Input<String>? dataStoreType;
  /// The document processing mode for the data store connection. Should only be set for PUBLIC_WEB and UNSTRUCTURED data stores. If not set it is considered as DOCUMENTS, as this is the legacy mode.
  /// See [DocumentProcessingMode](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/DataStoreConnection#documentprocessingmode) for valid values.
  final pulumi.Input<String>? documentProcessingMode;

  /// Creates a new [CxToolVersionToolDataStoreSpecDataStoreConnection].
  /// [dataStore] The full name of the referenced data store. Formats: projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore} projects/{project}/locations/{location}/dataStores/{dataStore}
  /// [dataStoreType] The type of the connected data store.
  /// [documentProcessingMode] The document processing mode for the data store connection. Should only be set for PUBLIC_WEB and UNSTRUCTURED data stores. If not set it is considered as DOCUMENTS, as this is the legacy mode.
  CxToolVersionToolDataStoreSpecDataStoreConnection({
    this.dataStore,
    this.dataStoreType,
    this.documentProcessingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': ?dataStore,
      'dataStoreType': ?dataStoreType,
      'documentProcessingMode': ?documentProcessingMode,
    };
  }

  factory CxToolVersionToolDataStoreSpecDataStoreConnection.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolDataStoreSpecDataStoreConnection(
      dataStore: map['dataStore'] == null ? null : (map['dataStore'] as String).input(),
      dataStoreType: map['dataStoreType'] == null ? null : (map['dataStoreType'] as String).input(),
      documentProcessingMode: map['documentProcessingMode'] == null ? null : (map['documentProcessingMode'] as String).input(),
    );
  }
}

