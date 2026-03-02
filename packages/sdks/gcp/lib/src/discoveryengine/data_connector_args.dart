// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_entity.dart';

/// {@template pulumi_discoveryengine_data_connector_data_connector_args_doc}
/// The set of arguments for DataConnector.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_data_connector_data_connector_args_doc}
class DataConnectorArgs {
  /// Indicates whether full syncs are paused for this connector
  final pulumi.Input<bool>? autoRunDisabled;
  /// The display name of the Collection.
  /// Should be human readable, used to display collections in the Console
  /// Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> collectionDisplayName;
  /// The ID to use for the Collection, which will become the final component
  /// of the Collection's resource name. A new Collection is created as
  /// part of the DataConnector setup. DataConnector is a singleton
  /// resource under Collection, managing all DataStores of the Collection.
  /// This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034)
  /// standard with a length limit of 63 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  final pulumi.Input<String> collectionId;
  /// The modes enabled for this connector. The possible value can be:
  /// 'DATA_INGESTION', 'ACTIONS', 'FEDERATED'
  /// 'EUA', 'FEDERATED_AND_EUA'.
  final pulumi.Input<List<String>>? connectorModes;
  /// The name of the data source.
  /// Supported values: `salesforce`, `jira`, `confluence`, `bigquery`.
  final pulumi.Input<String> dataSource;
  /// List of entities from the connected data source to ingest.
  /// Structure is documented below.
  final pulumi.Input<List<DataConnectorEntity>>? entities;
  /// The refresh interval specifically for incremental data syncs. If unset,
  /// incremental syncs will use the default from env, set to 3hrs.
  /// The minimum is 30 minutes and maximum is 7 days. Applicable to only 3P
  /// connectors. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  final pulumi.Input<String>? incrementalRefreshInterval;
  /// Indicates whether incremental syncs are paused for this connector.
  final pulumi.Input<bool>? incrementalSyncDisabled;
  /// Params needed to access the source in the format of json string.
  final pulumi.Input<String>? jsonParams;
  /// The KMS key to be used to protect the DataStores managed by this connector.
  /// Must be set for requests that need to comply with CMEK Org Policy
  /// protections.
  /// If this field is set and processed successfully, the DataStores created by
  /// this connector will be protected by the KMS key.
  final pulumi.Input<String>? kmsKeyName;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  final pulumi.Input<Map<String, String>>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The refresh interval for data sync. If duration is set to 0, the data will
  /// be synced in real time. The streaming feature is not supported yet. The
  /// minimum is 30 minutes and maximum is 7 days. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  final pulumi.Input<String> refreshInterval;
  /// Whether customer has enabled static IP addresses for this connector.
  final pulumi.Input<bool>? staticIpEnabled;
  /// The data synchronization mode supported by the data connector. The possible value can be:
  /// 'PERIODIC', 'STREAMING'.
  final pulumi.Input<String>? syncMode;

  /// Creates a new [DataConnectorArgs].
  /// [autoRunDisabled] Indicates whether full syncs are paused for this connector
  /// [collectionDisplayName] The display name of the Collection.
  /// [collectionId] The ID to use for the Collection, which will become the final component
  /// [connectorModes] The modes enabled for this connector. The possible value can be:
  /// [dataSource] The name of the data source.
  /// [entities] List of entities from the connected data source to ingest.
  /// [incrementalRefreshInterval] The refresh interval specifically for incremental data syncs. If unset,
  /// [incrementalSyncDisabled] Indicates whether incremental syncs are paused for this connector.
  /// [jsonParams] Params needed to access the source in the format of json string.
  /// [kmsKeyName] The KMS key to be used to protect the DataStores managed by this connector.
  /// [location] The geographic location where the data store should reside. The value can
  /// [params] Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  /// [project] The ID of the project in which the resource belongs.
  /// [refreshInterval] The refresh interval for data sync. If duration is set to 0, the data will
  /// [staticIpEnabled] Whether customer has enabled static IP addresses for this connector.
  /// [syncMode] The data synchronization mode supported by the data connector. The possible value can be:
  DataConnectorArgs({
    this.autoRunDisabled,
    required this.collectionDisplayName,
    required this.collectionId,
    this.connectorModes,
    required this.dataSource,
    this.entities,
    this.incrementalRefreshInterval,
    this.incrementalSyncDisabled,
    this.jsonParams,
    this.kmsKeyName,
    required this.location,
    this.params,
    this.project,
    required this.refreshInterval,
    this.staticIpEnabled,
    this.syncMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRunDisabled': ?autoRunDisabled,
      'collectionDisplayName': collectionDisplayName,
      'collectionId': collectionId,
      'connectorModes': ?connectorModes,
      'dataSource': dataSource,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<DataConnectorEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<DataConnectorEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'incrementalRefreshInterval': ?incrementalRefreshInterval,
      'incrementalSyncDisabled': ?incrementalSyncDisabled,
      'jsonParams': ?jsonParams,
      'kmsKeyName': ?kmsKeyName,
      'location': location,
      'params': ?params,
      'project': ?project,
      'refreshInterval': refreshInterval,
      'staticIpEnabled': ?staticIpEnabled,
      'syncMode': ?syncMode,
    };
  }

  factory DataConnectorArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorArgs(
      autoRunDisabled: map['autoRunDisabled'] == null ? null : (map['autoRunDisabled'] as bool).input(),
      collectionDisplayName: (map['collectionDisplayName'] as String).input(),
      collectionId: (map['collectionId'] as String).input(),
      connectorModes: map['connectorModes'] == null ? null : ((map['connectorModes'] as List).cast<String>()).input(),
      dataSource: (map['dataSource'] as String).input(),
      entities: map['entities'] == null ? null : (pulumi.Input.decodeList<DataConnectorEntity>(map['entities'], (value) => DataConnectorEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      incrementalRefreshInterval: map['incrementalRefreshInterval'] == null ? null : (map['incrementalRefreshInterval'] as String).input(),
      incrementalSyncDisabled: map['incrementalSyncDisabled'] == null ? null : (map['incrementalSyncDisabled'] as bool).input(),
      jsonParams: map['jsonParams'] == null ? null : (map['jsonParams'] as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
      location: (map['location'] as String).input(),
      params: map['params'] == null ? null : ((map['params'] as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      refreshInterval: (map['refreshInterval'] as String).input(),
      staticIpEnabled: map['staticIpEnabled'] == null ? null : (map['staticIpEnabled'] as bool).input(),
      syncMode: map['syncMode'] == null ? null : (map['syncMode'] as String).input(),
    );
  }
}

