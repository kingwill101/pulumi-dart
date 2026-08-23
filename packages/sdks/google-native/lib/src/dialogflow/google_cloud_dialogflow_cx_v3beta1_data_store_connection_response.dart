// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A data store connection. It represents a data store in Discovery Engine and the type of the contents it contains.
class GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse {
  /// The full name of the referenced data store. Formats: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}` `projects/{project}/locations/{location}/dataStores/{data_store}`
  final pulumi.Input<String> dataStore;
  /// The type of the connected data store.
  final pulumi.Input<String> dataStoreType;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse].
  /// [dataStore] The full name of the referenced data store. Formats: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}` `projects/{project}/locations/{location}/dataStores/{data_store}`
  /// [dataStoreType] The type of the connected data store.
  const GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse({
    required this.dataStore,
    required this.dataStoreType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': dataStore,
      'dataStoreType': dataStoreType,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse(
      dataStore: pulumi.Input.fromValue(map['dataStore'] as String),
      dataStoreType: pulumi.Input.fromValue(map['dataStoreType'] as String),
    );
  }
}
