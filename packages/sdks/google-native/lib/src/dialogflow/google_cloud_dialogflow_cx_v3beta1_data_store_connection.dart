// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_data_store_connection_data_store_type.dart';

/// A data store connection. It represents a data store in Discovery Engine and the type of the contents it contains.
class GoogleCloudDialogflowCxV3beta1DataStoreConnection {
  /// The full name of the referenced data store. Formats: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}` `projects/{project}/locations/{location}/dataStores/{data_store}`
  final String? dataStore;
  /// The type of the connected data store.
  final GoogleCloudDialogflowCxV3beta1DataStoreConnectionDataStoreType? dataStoreType;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1DataStoreConnection].
  /// [dataStore] The full name of the referenced data store. Formats: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}` `projects/{project}/locations/{location}/dataStores/{data_store}`
  /// [dataStoreType] The type of the connected data store.
  GoogleCloudDialogflowCxV3beta1DataStoreConnection({
    this.dataStore,
    this.dataStoreType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': ?dataStore,
      'dataStoreType': ?dataStoreType == null ? null : dataStoreType!.value,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1DataStoreConnection.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1DataStoreConnection(
      dataStore: map['dataStore'] == null ? null : map['dataStore'] as String,
      dataStoreType: map['dataStoreType'] == null ? null : GoogleCloudDialogflowCxV3beta1DataStoreConnectionDataStoreType.fromValue(map['dataStoreType'] as String),
    );
  }
}

