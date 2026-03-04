// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_engine_source_data_store_source_data_store_connector_config.dart';

class ToolDataStoreToolEngineSourceDataStoreSourceDataStore {
  /// (Output)
  /// The connector config for the data store connection.
  /// Structure is documented below.
  final pulumi.Input<
    List<ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig>
  >?
  connectorConfigs;

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
  /// &lt;a name="nested_data_store_tool_engine_source_data_store_sources_data_store_connector_config"&gt;&lt;/a&gt;The `connector_config` block contains:
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
      'connectorConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig
            >,
            List<Map<String, dynamic>>
          >(
            connectorConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'documentProcessingMode': ?documentProcessingMode,
      'name': name,
      'type': ?type,
    };
  }

  factory ToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap(
    Map<String, dynamic> map,
  ) {
    return ToolDataStoreToolEngineSourceDataStoreSourceDataStore(
      connectorConfigs: (() {
        final guardedValue = map['connectorConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig
          >(
            guardedValue,
            (value) =>
                ToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentProcessingMode: (() {
        final guardedValue = map['documentProcessingMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
