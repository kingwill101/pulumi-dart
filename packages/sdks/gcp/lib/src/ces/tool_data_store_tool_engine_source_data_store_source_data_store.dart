// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_engine_source_data_store_source_data_store_connector_config.dart';

class ToolDataStoreToolEngineSourceDataStoreSourceDataStore {
  /// (Output)
  /// The connector config for the data store connection.
  /// Structure is documented below.
  final List<ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig>? connectorConfigs;
  /// (Output)
  /// Timestamp when the data store was created.
  final String? createTime;
  /// (Output)
  /// The display name of the data store.
  final String? displayName;
  /// (Output)
  /// The document processing mode for the data store connection.
  /// Only set for PUBLIC_WEB and UNSTRUCTURED data stores.
  /// Possible values:
  /// DOCUMENTS
  /// CHUNKS
  final String? documentProcessingMode;
  /// Full resource name of the DataStore.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}`
  final String name;
  /// (Output)
  /// The type of the data store. This field is readonly and populated by the
  /// server.
  /// Possible values:
  /// PUBLIC_WEB
  /// UNSTRUCTURED
  /// FAQ
  /// CONNECTOR
  ///
  ///
  /// <a name="nested_data_store_tool_engine_source_data_store_sources_data_store_connector_config"></a>The `connector_config` block contains:
  final String? type;

  /// Creates a new [ToolDataStoreToolEngineSourceDataStoreSourceDataStore].
  /// [connectorConfigs] (Output)
  /// [createTime] (Output)
  /// [displayName] (Output)
  /// [documentProcessingMode] (Output)
  /// [name] Full resource name of the DataStore.
  /// [type] (Output)
  ToolDataStoreToolEngineSourceDataStoreSourceDataStore({
    this.connectorConfigs,
    this.createTime,
    this.displayName,
    this.documentProcessingMode,
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorConfigs': ?connectorConfigs == null ? null : pulumi.Input.encodeList<ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig, Map<String, dynamic>>(connectorConfigs!, (value) => value.toMap()),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'documentProcessingMode': ?documentProcessingMode,
      'name': name,
      'type': ?type,
    };
  }

  factory ToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSourceDataStoreSourceDataStore(
      connectorConfigs: map['connectorConfigs'] == null ? null : pulumi.Input.decodeList<ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig>(map['connectorConfigs'], (value) => ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      documentProcessingMode: map['documentProcessingMode'] == null ? null : map['documentProcessingMode'] as String,
      name: map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

