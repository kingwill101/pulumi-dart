// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_engine_source_data_store_source_data_store_connector_config.dart';

class ToolDataStoreToolEngineSourceDataStoreSourceDataStore {
  /// (Output)
  /// The connector config for the data store connection.
  /// Structure is documented below.
  final pulumi.Input<List<ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig>>? connectorConfigs;
  /// (Output)
  /// Timestamp when the data store was created.
  final pulumi.Input<String>? createTime;
  /// (Output)
  /// The display name of the data store.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// The document processing mode for the data store connection.
  /// Only set for PUBLIC_WEB and UNSTRUCTURED data stores.
  /// Possible values:
  /// DOCUMENTS
  /// CHUNKS
  final pulumi.Input<String>? documentProcessingMode;
  /// Full resource name of the DataStore.
  /// Format:
  /// `projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}`
  final pulumi.Input<String> name;
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
  final pulumi.Input<String>? type;

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
      'connectorConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig>, List<Map<String, dynamic>>>(connectorConfigs, (value) => pulumi.Input.encodeList<ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'documentProcessingMode': ?documentProcessingMode,
      'name': name,
      'type': ?type,
    };
  }

  factory ToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolEngineSourceDataStoreSourceDataStore(
      connectorConfigs: map['connectorConfigs'] == null ? null : (pulumi.Input.decodeList<ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig>(map['connectorConfigs'], (value) => ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      documentProcessingMode: map['documentProcessingMode'] == null ? null : (map['documentProcessingMode'] as String).input(),
      name: (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

