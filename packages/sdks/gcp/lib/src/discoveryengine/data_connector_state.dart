// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_entity.dart';
import 'data_connector_error.dart';

/// Input properties used for looking up and filtering DataConnector resources.
class DataConnectorState {
  /// State of the action connector. This reflects whether the action connector
  /// is initializing, active or has encountered errors. The possible value can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  final pulumi.Input<String>? actionState;
  /// Indicates whether full syncs are paused for this connector
  final pulumi.Input<bool>? autoRunDisabled;
  /// User actions that must be completed before the connector can start syncing data.
  /// The possible values can be: 'ALLOWLIST_STATIC_IP', 'ALLOWLIST_IN_SERVICE_ATTACHMENT'.
  final pulumi.Input<List<String>>? blockingReasons;
  /// The display name of the Collection.
  /// Should be human readable, used to display collections in the Console
  /// Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String>? collectionDisplayName;
  /// The ID to use for the Collection, which will become the final component
  /// of the Collection's resource name. A new Collection is created as
  /// part of the DataConnector setup. DataConnector is a singleton
  /// resource under Collection, managing all DataStores of the Collection.
  /// This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034)
  /// standard with a length limit of 63 characters. Otherwise, an
  /// INVALID_ARGUMENT error is returned.
  final pulumi.Input<String>? collectionId;
  /// The modes enabled for this connector. The possible value can be:
  /// 'DATA_INGESTION', 'ACTIONS', 'FEDERATED'
  /// 'EUA', 'FEDERATED_AND_EUA'.
  final pulumi.Input<List<String>>? connectorModes;
  /// The type of connector. Each source can only map to one type.
  /// For example, salesforce, confluence and jira have THIRD_PARTY connector
  /// type. It is not mutable once set by system. The possible value can be:
  /// 'CONNECTOR_TYPE_UNSPECIFIED', 'THIRD_PARTY', 'GCP_FHIR', 'BIG_QUERY',
  /// 'GCS', 'GOOGLE_MAIL', 'GOOGLE_CALENDAR', 'GOOGLE_DRIVE',
  /// 'NATIVE_CLOUD_IDENTITY', 'THIRD_PARTY_FEDERATED', 'THIRD_PARTY_EUA', 'GCNV'.
  final pulumi.Input<String>? connectorType;
  /// Timestamp when the DataConnector was created.
  final pulumi.Input<String>? createTime;
  /// The name of the data source.
  /// Supported values: `salesforce`, `jira`, `confluence`, `bigquery`.
  final pulumi.Input<String>? dataSource;
  /// List of entities from the connected data source to ingest.
  /// Structure is documented below.
  final pulumi.Input<List<DataConnectorEntity>>? entities;
  /// The errors from initialization or from the latest connector run.
  /// Structure is documented below.
  final pulumi.Input<List<DataConnectorError>>? errors;
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
  /// For periodic connectors only, the last time a data sync was completed.
  final pulumi.Input<String>? lastSyncTime;
  /// The most recent timestamp when this [DataConnector][] was paused,
  /// affecting all functionalities such as data synchronization.
  /// Pausing a connector has the following effects:
  /// - All functionalities, including data synchronization, are halted.
  /// - Any ongoing data synchronization job will be canceled.
  /// - No future data synchronization runs will be scheduled nor can be
  /// triggered.
  final pulumi.Input<String>? latestPauseTime;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// The full resource name of the Data Connector.
  /// Format: `projects/*/locations/*/collections/*/dataConnector`.
  final pulumi.Input<String>? name;
  /// Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  final pulumi.Input<Map<String, String>>? params;
  /// The tenant project ID associated with private connectivity connectors.
  /// This project must be allowlisted by in order for the connector to function.
  final pulumi.Input<String>? privateConnectivityProjectId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The real-time sync state. The possible values can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  final pulumi.Input<String>? realtimeState;
  /// The refresh interval for data sync. If duration is set to 0, the data will
  /// be synced in real time. The streaming feature is not supported yet. The
  /// minimum is 30 minutes and maximum is 7 days. When the refresh interval is
  /// set to the same value as the incremental refresh interval, incremental
  /// sync will be disabled.
  final pulumi.Input<String>? refreshInterval;
  /// The state of connector. The possible value can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  final pulumi.Input<String>? state;
  /// The static IP addresses used by this connector.
  final pulumi.Input<List<String>>? staticIpAddresses;
  /// Whether customer has enabled static IP addresses for this connector.
  final pulumi.Input<bool>? staticIpEnabled;
  /// The data synchronization mode supported by the data connector. The possible value can be:
  /// 'PERIODIC', 'STREAMING'.
  final pulumi.Input<String>? syncMode;
  /// Timestamp when the DataConnector was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataConnectorState].
  /// [actionState] State of the action connector. This reflects whether the action connector
  /// [autoRunDisabled] Indicates whether full syncs are paused for this connector
  /// [blockingReasons] User actions that must be completed before the connector can start syncing data.
  /// [collectionDisplayName] The display name of the Collection.
  /// [collectionId] The ID to use for the Collection, which will become the final component
  /// [connectorModes] The modes enabled for this connector. The possible value can be:
  /// [connectorType] The type of connector. Each source can only map to one type.
  /// [createTime] Timestamp when the DataConnector was created.
  /// [dataSource] The name of the data source.
  /// [entities] List of entities from the connected data source to ingest.
  /// [errors] The errors from initialization or from the latest connector run.
  /// [incrementalRefreshInterval] The refresh interval specifically for incremental data syncs. If unset,
  /// [incrementalSyncDisabled] Indicates whether incremental syncs are paused for this connector.
  /// [jsonParams] Params needed to access the source in the format of json string.
  /// [kmsKeyName] The KMS key to be used to protect the DataStores managed by this connector.
  /// [lastSyncTime] For periodic connectors only, the last time a data sync was completed.
  /// [latestPauseTime] The most recent timestamp when this [DataConnector][] was paused,
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The full resource name of the Data Connector.
  /// [params] Params needed to access the source in the format of String-to-String (Key, Value) pairs.
  /// [privateConnectivityProjectId] The tenant project ID associated with private connectivity connectors.
  /// [project] The ID of the project in which the resource belongs.
  /// [realtimeState] The real-time sync state. The possible values can be:
  /// [refreshInterval] The refresh interval for data sync. If duration is set to 0, the data will
  /// [state] The state of connector. The possible value can be:
  /// [staticIpAddresses] The static IP addresses used by this connector.
  /// [staticIpEnabled] Whether customer has enabled static IP addresses for this connector.
  /// [syncMode] The data synchronization mode supported by the data connector. The possible value can be:
  /// [updateTime] Timestamp when the DataConnector was updated.
  DataConnectorState({
    this.actionState,
    this.autoRunDisabled,
    this.blockingReasons,
    this.collectionDisplayName,
    this.collectionId,
    this.connectorModes,
    this.connectorType,
    this.createTime,
    this.dataSource,
    this.entities,
    this.errors,
    this.incrementalRefreshInterval,
    this.incrementalSyncDisabled,
    this.jsonParams,
    this.kmsKeyName,
    this.lastSyncTime,
    this.latestPauseTime,
    this.location,
    this.name,
    this.params,
    this.privateConnectivityProjectId,
    this.project,
    this.realtimeState,
    this.refreshInterval,
    this.state,
    this.staticIpAddresses,
    this.staticIpEnabled,
    this.syncMode,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionState': ?actionState,
      'autoRunDisabled': ?autoRunDisabled,
      'blockingReasons': ?blockingReasons,
      'collectionDisplayName': ?collectionDisplayName,
      'collectionId': ?collectionId,
      'connectorModes': ?connectorModes,
      'connectorType': ?connectorType,
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'entities': ?pulumi.Input.mapOptionalInputValue<List<DataConnectorEntity>, List<Map<String, dynamic>>>(entities, (value) => pulumi.Input.encodeList<DataConnectorEntity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': ?pulumi.Input.mapOptionalInputValue<List<DataConnectorError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<DataConnectorError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'incrementalRefreshInterval': ?incrementalRefreshInterval,
      'incrementalSyncDisabled': ?incrementalSyncDisabled,
      'jsonParams': ?jsonParams,
      'kmsKeyName': ?kmsKeyName,
      'lastSyncTime': ?lastSyncTime,
      'latestPauseTime': ?latestPauseTime,
      'location': ?location,
      'name': ?name,
      'params': ?params,
      'privateConnectivityProjectId': ?privateConnectivityProjectId,
      'project': ?project,
      'realtimeState': ?realtimeState,
      'refreshInterval': ?refreshInterval,
      'state': ?state,
      'staticIpAddresses': ?staticIpAddresses,
      'staticIpEnabled': ?staticIpEnabled,
      'syncMode': ?syncMode,
      'updateTime': ?updateTime,
    };
  }

  factory DataConnectorState.fromMap(Map<String, dynamic> map) {
    return DataConnectorState(
      actionState: map['actionState'] == null ? null : (map['actionState']! as String).input(),
      autoRunDisabled: map['autoRunDisabled'] == null ? null : (map['autoRunDisabled']! as bool).input(),
      blockingReasons: map['blockingReasons'] == null ? null : ((map['blockingReasons']! as List).cast<String>()).input(),
      collectionDisplayName: map['collectionDisplayName'] == null ? null : (map['collectionDisplayName']! as String).input(),
      collectionId: map['collectionId'] == null ? null : (map['collectionId']! as String).input(),
      connectorModes: map['connectorModes'] == null ? null : ((map['connectorModes']! as List).cast<String>()).input(),
      connectorType: map['connectorType'] == null ? null : (map['connectorType']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dataSource: map['dataSource'] == null ? null : (map['dataSource']! as String).input(),
      entities: map['entities'] == null ? null : (pulumi.Input.decodeList<DataConnectorEntity>(map['entities']!, (value) => DataConnectorEntity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<DataConnectorError>(map['errors']!, (value) => DataConnectorError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      incrementalRefreshInterval: map['incrementalRefreshInterval'] == null ? null : (map['incrementalRefreshInterval']! as String).input(),
      incrementalSyncDisabled: map['incrementalSyncDisabled'] == null ? null : (map['incrementalSyncDisabled']! as bool).input(),
      jsonParams: map['jsonParams'] == null ? null : (map['jsonParams']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      lastSyncTime: map['lastSyncTime'] == null ? null : (map['lastSyncTime']! as String).input(),
      latestPauseTime: map['latestPauseTime'] == null ? null : (map['latestPauseTime']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      params: map['params'] == null ? null : ((map['params']! as Map).cast<String, String>()).input(),
      privateConnectivityProjectId: map['privateConnectivityProjectId'] == null ? null : (map['privateConnectivityProjectId']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      realtimeState: map['realtimeState'] == null ? null : (map['realtimeState']! as String).input(),
      refreshInterval: map['refreshInterval'] == null ? null : (map['refreshInterval']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      staticIpAddresses: map['staticIpAddresses'] == null ? null : ((map['staticIpAddresses']! as List).cast<String>()).input(),
      staticIpEnabled: map['staticIpEnabled'] == null ? null : (map['staticIpEnabled']! as bool).input(),
      syncMode: map['syncMode'] == null ? null : (map['syncMode']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

