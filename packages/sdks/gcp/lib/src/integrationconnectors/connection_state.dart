// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config.dart';
import 'connection_config_variable.dart';
import 'connection_connector_version_infra_config.dart';
import 'connection_destination_config.dart';
import 'connection_eventing_config.dart';
import 'connection_eventing_runtime_data.dart';
import 'connection_lock_config.dart';
import 'connection_log_config.dart';
import 'connection_node_config.dart';
import 'connection_ssl_config.dart';
import 'connection_status.dart';

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// authConfig for the connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfig>? authConfig;
  /// Config Variables for the connection.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionConfigVariable>>? configVariables;
  /// Connection revision. This field is only updated when the connection is created or updated by User.
  final pulumi.Input<String>? connectionRevision;
  /// connectorVersion of the Connector.
  final pulumi.Input<String>? connectorVersion;
  /// This configuration provides infra configs like rate limit threshold which need to be configurable for every connector version.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionConnectorVersionInfraConfig>>? connectorVersionInfraConfigs;
  /// Flag to mark the version indicating the launch stage.
  final pulumi.Input<String>? connectorVersionLaunchStage;
  /// Time the Namespace was created in UTC.
  final pulumi.Input<String>? createTime;
  /// An arbitrary description for the Connection.
  final pulumi.Input<String>? description;
  /// Define the Connectors target endpoint.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionDestinationConfig>>? destinationConfigs;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Eventing Configuration of a connection
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfig>? eventingConfig;
  /// Eventing enablement type. Will be nil if eventing is not enabled.
  /// Possible values are: `EVENTING_AND_CONNECTION`, `ONLY_EVENTING`.
  final pulumi.Input<String>? eventingEnablementType;
  /// Eventing Runtime Data.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionEventingRuntimeData>>? eventingRuntimeDatas;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location in which Connection needs to be created.
  final pulumi.Input<String>? location;
  /// Determines whether or no a connection is locked. If locked, a reason must be specified.
  /// Structure is documented below.
  final pulumi.Input<ConnectionLockConfig>? lockConfig;
  /// Log configuration for the connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionLogConfig>? logConfig;
  /// Name of Connection needs to be created.
  final pulumi.Input<String>? name;
  /// Node configuration for the connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionNodeConfig>? nodeConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Service account needed for runtime plane to access Google Cloud resources.
  final pulumi.Input<String>? serviceAccount;
  /// The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address.
  /// e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  final pulumi.Input<String>? serviceDirectory;
  /// SSL Configuration of a connection
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfig>? sslConfig;
  /// (Output)
  /// Current status of eventing.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionStatus>>? statuses;
  /// This subscription type enum states the subscription type of the project.
  final pulumi.Input<String>? subscriptionType;
  /// Suspended indicates if a user has suspended a connection or not.
  final pulumi.Input<bool>? suspended;
  /// Time the Namespace was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ConnectionState].
  /// [authConfig] authConfig for the connection.
  /// [configVariables] Config Variables for the connection.
  /// [connectionRevision] Connection revision. This field is only updated when the connection is created or updated by User.
  /// [connectorVersion] connectorVersion of the Connector.
  /// [connectorVersionInfraConfigs] This configuration provides infra configs like rate limit threshold which need to be configurable for every connector version.
  /// [connectorVersionLaunchStage] Flag to mark the version indicating the launch stage.
  /// [createTime] Time the Namespace was created in UTC.
  /// [description] An arbitrary description for the Connection.
  /// [destinationConfigs] Define the Connectors target endpoint.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [eventingConfig] Eventing Configuration of a connection
  /// [eventingEnablementType] Eventing enablement type. Will be nil if eventing is not enabled.
  /// [eventingRuntimeDatas] Eventing Runtime Data.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Location in which Connection needs to be created.
  /// [lockConfig] Determines whether or no a connection is locked. If locked, a reason must be specified.
  /// [logConfig] Log configuration for the connection.
  /// [name] Name of Connection needs to be created.
  /// [nodeConfig] Node configuration for the connection.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serviceAccount] Service account needed for runtime plane to access Google Cloud resources.
  /// [serviceDirectory] The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address.
  /// [sslConfig] SSL Configuration of a connection
  /// [statuses] (Output)
  /// [subscriptionType] This subscription type enum states the subscription type of the project.
  /// [suspended] Suspended indicates if a user has suspended a connection or not.
  /// [updateTime] Time the Namespace was updated in UTC.
  ConnectionState({
    this.authConfig,
    this.configVariables,
    this.connectionRevision,
    this.connectorVersion,
    this.connectorVersionInfraConfigs,
    this.connectorVersionLaunchStage,
    this.createTime,
    this.description,
    this.destinationConfigs,
    this.effectiveLabels,
    this.eventingConfig,
    this.eventingEnablementType,
    this.eventingRuntimeDatas,
    this.labels,
    this.location,
    this.lockConfig,
    this.logConfig,
    this.name,
    this.nodeConfig,
    this.project,
    this.pulumiLabels,
    this.serviceAccount,
    this.serviceDirectory,
    this.sslConfig,
    this.statuses,
    this.subscriptionType,
    this.suspended,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'configVariables': ?pulumi.Input.mapOptionalInputValue<List<ConnectionConfigVariable>, List<Map<String, dynamic>>>(configVariables, (value) => pulumi.Input.encodeList<ConnectionConfigVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionRevision': ?connectionRevision,
      'connectorVersion': ?connectorVersion,
      'connectorVersionInfraConfigs': ?pulumi.Input.mapOptionalInputValue<List<ConnectionConnectorVersionInfraConfig>, List<Map<String, dynamic>>>(connectorVersionInfraConfigs, (value) => pulumi.Input.encodeList<ConnectionConnectorVersionInfraConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectorVersionLaunchStage': ?connectorVersionLaunchStage,
      'createTime': ?createTime,
      'description': ?description,
      'destinationConfigs': ?pulumi.Input.mapOptionalInputValue<List<ConnectionDestinationConfig>, List<Map<String, dynamic>>>(destinationConfigs, (value) => pulumi.Input.encodeList<ConnectionDestinationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveLabels': ?effectiveLabels,
      'eventingConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionEventingConfig, Map<String, dynamic>>(eventingConfig, (value) => value.toMap()),
      'eventingEnablementType': ?eventingEnablementType,
      'eventingRuntimeDatas': ?pulumi.Input.mapOptionalInputValue<List<ConnectionEventingRuntimeData>, List<Map<String, dynamic>>>(eventingRuntimeDatas, (value) => pulumi.Input.encodeList<ConnectionEventingRuntimeData, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'lockConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionLockConfig, Map<String, dynamic>>(lockConfig, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serviceAccount': ?serviceAccount,
      'serviceDirectory': ?serviceDirectory,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionSslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<ConnectionStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<ConnectionStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptionType': ?subscriptionType,
      'suspended': ?suspended,
      'updateTime': ?updateTime,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configVariables: (() { final guardedValue = map['configVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionConfigVariable>(guardedValue, (value) => ConnectionConfigVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectionRevision: (() { final guardedValue = map['connectionRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorVersion: (() { final guardedValue = map['connectorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorVersionInfraConfigs: (() { final guardedValue = map['connectorVersionInfraConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionConnectorVersionInfraConfig>(guardedValue, (value) => ConnectionConnectorVersionInfraConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectorVersionLaunchStage: (() { final guardedValue = map['connectorVersionLaunchStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConfigs: (() { final guardedValue = map['destinationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionDestinationConfig>(guardedValue, (value) => ConnectionDestinationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      eventingConfig: (() { final guardedValue = map['eventingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionEventingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventingEnablementType: (() { final guardedValue = map['eventingEnablementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventingRuntimeDatas: (() { final guardedValue = map['eventingRuntimeDatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionEventingRuntimeData>(guardedValue, (value) => ConnectionEventingRuntimeData.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lockConfig: (() { final guardedValue = map['lockConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionLockConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectory: (() { final guardedValue = map['serviceDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionSslConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionStatus>(guardedValue, (value) => ConnectionStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subscriptionType: (() { final guardedValue = map['subscriptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

