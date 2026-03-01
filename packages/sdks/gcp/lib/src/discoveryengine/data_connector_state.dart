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
    pulumi.Output<String>? actionState,
    pulumi.Output<bool>? autoRunDisabled,
    pulumi.Output<List<String>>? blockingReasons,
    pulumi.Output<String>? collectionDisplayName,
    pulumi.Output<String>? collectionId,
    pulumi.Output<List<String>>? connectorModes,
    pulumi.Output<String>? connectorType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataSource,
    pulumi.Output<List<DataConnectorEntity>>? entities,
    pulumi.Output<List<DataConnectorError>>? errors,
    pulumi.Output<String>? incrementalRefreshInterval,
    pulumi.Output<bool>? incrementalSyncDisabled,
    pulumi.Output<String>? jsonParams,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<String>? lastSyncTime,
    pulumi.Output<String>? latestPauseTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? params,
    pulumi.Output<String>? privateConnectivityProjectId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? realtimeState,
    pulumi.Output<String>? refreshInterval,
    pulumi.Output<String>? state,
    pulumi.Output<List<String>>? staticIpAddresses,
    pulumi.Output<bool>? staticIpEnabled,
    pulumi.Output<String>? syncMode,
    pulumi.Output<String>? updateTime,
  }) :
      actionState = pulumi.Input.asOptionalInput<String>(actionState),
      autoRunDisabled = pulumi.Input.asOptionalInput<bool>(autoRunDisabled),
      blockingReasons = pulumi.Input.asOptionalInput<List<String>>(blockingReasons),
      collectionDisplayName = pulumi.Input.asOptionalInput<String>(collectionDisplayName),
      collectionId = pulumi.Input.asOptionalInput<String>(collectionId),
      connectorModes = pulumi.Input.asOptionalInput<List<String>>(connectorModes),
      connectorType = pulumi.Input.asOptionalInput<String>(connectorType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataSource = pulumi.Input.asOptionalInput<String>(dataSource),
      entities = pulumi.Input.asOptionalInput<List<DataConnectorEntity>>(entities),
      errors = pulumi.Input.asOptionalInput<List<DataConnectorError>>(errors),
      incrementalRefreshInterval = pulumi.Input.asOptionalInput<String>(incrementalRefreshInterval),
      incrementalSyncDisabled = pulumi.Input.asOptionalInput<bool>(incrementalSyncDisabled),
      jsonParams = pulumi.Input.asOptionalInput<String>(jsonParams),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      lastSyncTime = pulumi.Input.asOptionalInput<String>(lastSyncTime),
      latestPauseTime = pulumi.Input.asOptionalInput<String>(latestPauseTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      params = pulumi.Input.asOptionalInput<Map<String, String>>(params),
      privateConnectivityProjectId = pulumi.Input.asOptionalInput<String>(privateConnectivityProjectId),
      project = pulumi.Input.asOptionalInput<String>(project),
      realtimeState = pulumi.Input.asOptionalInput<String>(realtimeState),
      refreshInterval = pulumi.Input.asOptionalInput<String>(refreshInterval),
      state = pulumi.Input.asOptionalInput<String>(state),
      staticIpAddresses = pulumi.Input.asOptionalInput<List<String>>(staticIpAddresses),
      staticIpEnabled = pulumi.Input.asOptionalInput<bool>(staticIpEnabled),
      syncMode = pulumi.Input.asOptionalInput<String>(syncMode),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      actionState: map['actionState'] == null ? null : pulumi.Output.create<String>(map['actionState'] as String),
      autoRunDisabled: map['autoRunDisabled'] == null ? null : pulumi.Output.create<bool>(map['autoRunDisabled'] as bool),
      blockingReasons: map['blockingReasons'] == null ? null : pulumi.Output.create<List<String>>((map['blockingReasons'] as List).cast<String>()),
      collectionDisplayName: map['collectionDisplayName'] == null ? null : pulumi.Output.create<String>(map['collectionDisplayName'] as String),
      collectionId: map['collectionId'] == null ? null : pulumi.Output.create<String>(map['collectionId'] as String),
      connectorModes: map['connectorModes'] == null ? null : pulumi.Output.create<List<String>>((map['connectorModes'] as List).cast<String>()),
      connectorType: map['connectorType'] == null ? null : pulumi.Output.create<String>(map['connectorType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataSource: map['dataSource'] == null ? null : pulumi.Output.create<String>(map['dataSource'] as String),
      entities: map['entities'] == null ? null : pulumi.Output.create<List<DataConnectorEntity>>(pulumi.Input.decodeList<DataConnectorEntity>(map['entities'], (value) => DataConnectorEntity.fromMap((value as Map).cast<String, dynamic>()))),
      errors: map['errors'] == null ? null : pulumi.Output.create<List<DataConnectorError>>(pulumi.Input.decodeList<DataConnectorError>(map['errors'], (value) => DataConnectorError.fromMap((value as Map).cast<String, dynamic>()))),
      incrementalRefreshInterval: map['incrementalRefreshInterval'] == null ? null : pulumi.Output.create<String>(map['incrementalRefreshInterval'] as String),
      incrementalSyncDisabled: map['incrementalSyncDisabled'] == null ? null : pulumi.Output.create<bool>(map['incrementalSyncDisabled'] as bool),
      jsonParams: map['jsonParams'] == null ? null : pulumi.Output.create<String>(map['jsonParams'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      lastSyncTime: map['lastSyncTime'] == null ? null : pulumi.Output.create<String>(map['lastSyncTime'] as String),
      latestPauseTime: map['latestPauseTime'] == null ? null : pulumi.Output.create<String>(map['latestPauseTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      params: map['params'] == null ? null : pulumi.Output.create<Map<String, String>>((map['params'] as Map).cast<String, String>()),
      privateConnectivityProjectId: map['privateConnectivityProjectId'] == null ? null : pulumi.Output.create<String>(map['privateConnectivityProjectId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      realtimeState: map['realtimeState'] == null ? null : pulumi.Output.create<String>(map['realtimeState'] as String),
      refreshInterval: map['refreshInterval'] == null ? null : pulumi.Output.create<String>(map['refreshInterval'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      staticIpAddresses: map['staticIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['staticIpAddresses'] as List).cast<String>()),
      staticIpEnabled: map['staticIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['staticIpEnabled'] as bool),
      syncMode: map['syncMode'] == null ? null : pulumi.Output.create<String>(map['syncMode'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

