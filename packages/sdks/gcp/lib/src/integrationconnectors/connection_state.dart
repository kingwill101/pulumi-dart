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
    pulumi.Output<ConnectionAuthConfig>? authConfig,
    pulumi.Output<List<ConnectionConfigVariable>>? configVariables,
    pulumi.Output<String>? connectionRevision,
    pulumi.Output<String>? connectorVersion,
    pulumi.Output<List<ConnectionConnectorVersionInfraConfig>>? connectorVersionInfraConfigs,
    pulumi.Output<String>? connectorVersionLaunchStage,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<ConnectionDestinationConfig>>? destinationConfigs,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<ConnectionEventingConfig>? eventingConfig,
    pulumi.Output<String>? eventingEnablementType,
    pulumi.Output<List<ConnectionEventingRuntimeData>>? eventingRuntimeDatas,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<ConnectionLockConfig>? lockConfig,
    pulumi.Output<ConnectionLogConfig>? logConfig,
    pulumi.Output<String>? name,
    pulumi.Output<ConnectionNodeConfig>? nodeConfig,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<String>? serviceDirectory,
    pulumi.Output<ConnectionSslConfig>? sslConfig,
    pulumi.Output<List<ConnectionStatus>>? statuses,
    pulumi.Output<String>? subscriptionType,
    pulumi.Output<bool>? suspended,
    pulumi.Output<String>? updateTime,
  }) :
      authConfig = pulumi.Input.asOptionalInput<ConnectionAuthConfig>(authConfig),
      configVariables = pulumi.Input.asOptionalInput<List<ConnectionConfigVariable>>(configVariables),
      connectionRevision = pulumi.Input.asOptionalInput<String>(connectionRevision),
      connectorVersion = pulumi.Input.asOptionalInput<String>(connectorVersion),
      connectorVersionInfraConfigs = pulumi.Input.asOptionalInput<List<ConnectionConnectorVersionInfraConfig>>(connectorVersionInfraConfigs),
      connectorVersionLaunchStage = pulumi.Input.asOptionalInput<String>(connectorVersionLaunchStage),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationConfigs = pulumi.Input.asOptionalInput<List<ConnectionDestinationConfig>>(destinationConfigs),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      eventingConfig = pulumi.Input.asOptionalInput<ConnectionEventingConfig>(eventingConfig),
      eventingEnablementType = pulumi.Input.asOptionalInput<String>(eventingEnablementType),
      eventingRuntimeDatas = pulumi.Input.asOptionalInput<List<ConnectionEventingRuntimeData>>(eventingRuntimeDatas),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      lockConfig = pulumi.Input.asOptionalInput<ConnectionLockConfig>(lockConfig),
      logConfig = pulumi.Input.asOptionalInput<ConnectionLogConfig>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeConfig = pulumi.Input.asOptionalInput<ConnectionNodeConfig>(nodeConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      serviceDirectory = pulumi.Input.asOptionalInput<String>(serviceDirectory),
      sslConfig = pulumi.Input.asOptionalInput<ConnectionSslConfig>(sslConfig),
      statuses = pulumi.Input.asOptionalInput<List<ConnectionStatus>>(statuses),
      subscriptionType = pulumi.Input.asOptionalInput<String>(subscriptionType),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<ConnectionAuthConfig>(ConnectionAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      configVariables: map['configVariables'] == null ? null : pulumi.Output.create<List<ConnectionConfigVariable>>(pulumi.Input.decodeList<ConnectionConfigVariable>(map['configVariables'], (value) => ConnectionConfigVariable.fromMap((value as Map).cast<String, dynamic>()))),
      connectionRevision: map['connectionRevision'] == null ? null : pulumi.Output.create<String>(map['connectionRevision'] as String),
      connectorVersion: map['connectorVersion'] == null ? null : pulumi.Output.create<String>(map['connectorVersion'] as String),
      connectorVersionInfraConfigs: map['connectorVersionInfraConfigs'] == null ? null : pulumi.Output.create<List<ConnectionConnectorVersionInfraConfig>>(pulumi.Input.decodeList<ConnectionConnectorVersionInfraConfig>(map['connectorVersionInfraConfigs'], (value) => ConnectionConnectorVersionInfraConfig.fromMap((value as Map).cast<String, dynamic>()))),
      connectorVersionLaunchStage: map['connectorVersionLaunchStage'] == null ? null : pulumi.Output.create<String>(map['connectorVersionLaunchStage'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationConfigs: map['destinationConfigs'] == null ? null : pulumi.Output.create<List<ConnectionDestinationConfig>>(pulumi.Input.decodeList<ConnectionDestinationConfig>(map['destinationConfigs'], (value) => ConnectionDestinationConfig.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      eventingConfig: map['eventingConfig'] == null ? null : pulumi.Output.create<ConnectionEventingConfig>(ConnectionEventingConfig.fromMap((map['eventingConfig'] as Map).cast<String, dynamic>())),
      eventingEnablementType: map['eventingEnablementType'] == null ? null : pulumi.Output.create<String>(map['eventingEnablementType'] as String),
      eventingRuntimeDatas: map['eventingRuntimeDatas'] == null ? null : pulumi.Output.create<List<ConnectionEventingRuntimeData>>(pulumi.Input.decodeList<ConnectionEventingRuntimeData>(map['eventingRuntimeDatas'], (value) => ConnectionEventingRuntimeData.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      lockConfig: map['lockConfig'] == null ? null : pulumi.Output.create<ConnectionLockConfig>(ConnectionLockConfig.fromMap((map['lockConfig'] as Map).cast<String, dynamic>())),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<ConnectionLogConfig>(ConnectionLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<ConnectionNodeConfig>(ConnectionNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      serviceDirectory: map['serviceDirectory'] == null ? null : pulumi.Output.create<String>(map['serviceDirectory'] as String),
      sslConfig: map['sslConfig'] == null ? null : pulumi.Output.create<ConnectionSslConfig>(ConnectionSslConfig.fromMap((map['sslConfig'] as Map).cast<String, dynamic>())),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<ConnectionStatus>>(pulumi.Input.decodeList<ConnectionStatus>(map['statuses'], (value) => ConnectionStatus.fromMap((value as Map).cast<String, dynamic>()))),
      subscriptionType: map['subscriptionType'] == null ? null : pulumi.Output.create<String>(map['subscriptionType'] as String),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

