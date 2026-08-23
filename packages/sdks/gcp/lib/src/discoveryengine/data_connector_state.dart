// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_connector_action_config.dart';
import 'data_connector_bap_config.dart';
import 'data_connector_destination_config.dart';
import 'data_connector_entity.dart';
import 'data_connector_error.dart';

/// Input properties used for looking up and filtering DataConnector resources.
class DataConnectorState {
  /// Action configuration for the data connector. Configures action
  /// capabilities for connectors that support the ACTIONS connector mode.
  /// Structure is documented below.
  final pulumi.Input<DataConnectorActionConfig>? actionConfig;
  /// State of the action connector. This reflects whether the action connector
  /// is initializing, active or has encountered errors. The possible value can be:
  /// 'STATE_UNSPECIFIED', 'CREATING', 'ACTIVE', 'FAILED', 'RUNNING', 'WARNING',
  /// 'INITIALIZATION_FAILED', 'UPDATING'.
  final pulumi.Input<String>? actionState;
  /// Indicates whether full syncs are paused for this connector
  final pulumi.Input<bool>? autoRunDisabled;
  /// BAP (Business Application Platform) configuration for the data
  /// connector. Controls which actions are enabled for connectors
  /// using the ACTIONS connector mode.
  /// Structure is documented below.
  final pulumi.Input<DataConnectorBapConfig>? bapConfig;
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
  /// The identifier for the data source.
  /// This is a partial list of supported connectors. Please refer to the
  /// [documentation](https://docs.cloud.google.com/gemini/enterprise/docs/connectors/introduction-to-connectors-and-data-stores)
  /// for the full list of connectors.
  /// Supported first-party connectors include:
  final pulumi.Input<String>? dataSource;
  /// The version of the data source. For example, `3` for Jira v3.
  final pulumi.Input<int>? dataSourceVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Destination connector configurations for the data connector,
  /// used to configure where data is served.
  /// Structure is documented below.
  final pulumi.Input<List<DataConnectorDestinationConfig>>? destinationConfigs;
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
  /// [actionConfig] Action configuration for the data connector. Configures action
  /// [actionState] State of the action connector. This reflects whether the action connector
  /// [autoRunDisabled] Indicates whether full syncs are paused for this connector
  /// [bapConfig] BAP (Business Application Platform) configuration for the data
  /// [blockingReasons] User actions that must be completed before the connector can start syncing data.
  /// [collectionDisplayName] The display name of the Collection.
  /// [collectionId] The ID to use for the Collection, which will become the final component
  /// [connectorModes] The modes enabled for this connector. The possible value can be:
  /// [connectorType] The type of connector. Each source can only map to one type.
  /// [createTime] Timestamp when the DataConnector was created.
  /// [dataSource] The identifier for the data source.
  /// [dataSourceVersion] The version of the data source. For example, `3` for Jira v3.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [destinationConfigs] Destination connector configurations for the data connector,
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
  const DataConnectorState({
    this.actionConfig,
    this.actionState,
    this.autoRunDisabled,
    this.bapConfig,
    this.blockingReasons,
    this.collectionDisplayName,
    this.collectionId,
    this.connectorModes,
    this.connectorType,
    this.createTime,
    this.dataSource,
    this.dataSourceVersion,
    this.deletionPolicy,
    this.destinationConfigs,
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
      'actionConfig': ?pulumi.Input.mapOptionalInputValue<DataConnectorActionConfig, Map<String, dynamic>>(actionConfig, (value) => value.toMap()),
      'actionState': ?actionState,
      'autoRunDisabled': ?autoRunDisabled,
      'bapConfig': ?pulumi.Input.mapOptionalInputValue<DataConnectorBapConfig, Map<String, dynamic>>(bapConfig, (value) => value.toMap()),
      'blockingReasons': ?blockingReasons,
      'collectionDisplayName': ?collectionDisplayName,
      'collectionId': ?collectionId,
      'connectorModes': ?connectorModes,
      'connectorType': ?connectorType,
      'createTime': ?createTime,
      'dataSource': ?dataSource,
      'dataSourceVersion': ?dataSourceVersion,
      'deletionPolicy': ?deletionPolicy,
      'destinationConfigs': ?pulumi.Input.mapOptionalInputValue<List<DataConnectorDestinationConfig>, List<Map<String, dynamic>>>(destinationConfigs, (value) => pulumi.Input.encodeList<DataConnectorDestinationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      actionConfig: (() { final guardedValue = map['actionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataConnectorActionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionState: (() { final guardedValue = map['actionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRunDisabled: (() { final guardedValue = map['autoRunDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bapConfig: (() { final guardedValue = map['bapConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataConnectorBapConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockingReasons: (() { final guardedValue = map['blockingReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      collectionDisplayName: (() { final guardedValue = map['collectionDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorModes: (() { final guardedValue = map['connectorModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectorType: (() { final guardedValue = map['connectorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSourceVersion: (() { final guardedValue = map['dataSourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConfigs: (() { final guardedValue = map['destinationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataConnectorDestinationConfig>(guardedValue, (value) => DataConnectorDestinationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataConnectorEntity>(guardedValue, (value) => DataConnectorEntity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataConnectorError>(guardedValue, (value) => DataConnectorError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      incrementalRefreshInterval: (() { final guardedValue = map['incrementalRefreshInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incrementalSyncDisabled: (() { final guardedValue = map['incrementalSyncDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jsonParams: (() { final guardedValue = map['jsonParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSyncTime: (() { final guardedValue = map['lastSyncTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestPauseTime: (() { final guardedValue = map['latestPauseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      privateConnectivityProjectId: (() { final guardedValue = map['privateConnectivityProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      realtimeState: (() { final guardedValue = map['realtimeState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshInterval: (() { final guardedValue = map['refreshInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticIpAddresses: (() { final guardedValue = map['staticIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      staticIpEnabled: (() { final guardedValue = map['staticIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      syncMode: (() { final guardedValue = map['syncMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
