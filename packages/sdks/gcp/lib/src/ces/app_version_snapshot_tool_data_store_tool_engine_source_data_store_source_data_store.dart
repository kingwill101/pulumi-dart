// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_engine_source_data_store_source_data_store_connector_config.dart';

class AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore {
  /// (Output)
  /// The connector config for the data store connection.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig
    >
  >?
  connectorConfigs;

  /// (Output)
  /// Timestamp when the toolset was created.
  final pulumi.Input<String>? createTime;

  /// The display name of the app version.
  final pulumi.Input<String>? displayName;

  /// (Output)
  /// The document processing mode for the data store connection.
  /// Only set for PUBLIC_WEB and UNSTRUCTURED data stores.
  /// Possible values:
  /// DOCUMENTS
  /// CHUNKS
  final pulumi.Input<String>? documentProcessingMode;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;

  /// (Output)
  /// The type of the data store. This field is readonly and populated by the
  /// server.
  /// Possible values:
  /// PUBLIC_WEB
  /// UNSTRUCTURED
  /// FAQ
  /// CONNECTOR
  final pulumi.Input<String>? type;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore].
  /// [connectorConfigs] (Output)
  /// [createTime] (Output)
  /// [displayName] The display name of the app version.
  /// [documentProcessingMode] (Output)
  /// [name] (Output)
  /// [type] (Output)
  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore({
    this.connectorConfigs,
    this.createTime,
    this.displayName,
    this.documentProcessingMode,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig
            >,
            List<Map<String, dynamic>>
          >(
            connectorConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'createTime': ?createTime,
      'displayName': ?displayName,
      'documentProcessingMode': ?documentProcessingMode,
      'name': ?name,
      'type': ?type,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStore(
      connectorConfigs: (() {
        final guardedValue = map['connectorConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig
          >(
            guardedValue,
            (value) =>
                AppVersionSnapshotToolDataStoreToolEngineSourceDataStoreSourceDataStoreConnectorConfig.fromMap(
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
