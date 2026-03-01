// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config.dart';
import 'config_variable.dart';
import 'connection_eventing_enablement_type.dart';
import 'connectors_log_config.dart';
import 'destination_config.dart';
import 'eventing_config.dart';
import 'lock_config.dart';
import 'node_config.dart';
import 'ssl_config.dart';

/// {@template pulumi_connectors_v1_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_connection_args_doc}
class ConnectionArgs {
  /// Optional. Configuration for establishing the connection's authentication with an external system.
  final pulumi.Input<AuthConfig>? authConfig;
  /// Optional. Configuration for configuring the connection with an external system.
  final pulumi.Input<List<ConfigVariable>>? configVariables;
  /// Required. Identifier to assign to the Connection. Must be unique within scope of the parent resource.
  final pulumi.Input<String> connectionId;
  /// Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  final pulumi.Input<String> connectorVersion;
  /// Optional. Description of the resource.
  final pulumi.Input<String>? description;
  /// Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  final pulumi.Input<List<DestinationConfig>>? destinationConfigs;
  /// Optional. Eventing config of a connection
  final pulumi.Input<EventingConfig>? eventingConfig;
  /// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  final pulumi.Input<ConnectionEventingEnablementType>? eventingEnablementType;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Configuration that indicates whether or not the Connection can be edited.
  final pulumi.Input<LockConfig>? lockConfig;
  /// Optional. Log configuration for the connection.
  final pulumi.Input<ConnectorsLogConfig>? logConfig;
  /// Optional. Node configuration for the connection.
  final pulumi.Input<NodeConfig>? nodeConfig;
  final pulumi.Input<String>? project;
  /// Optional. Service account needed for runtime plane to access Google Cloud resources.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. Ssl config of a connection
  final pulumi.Input<SslConfig>? sslConfig;
  /// Optional. Suspended indicates if a user has suspended a connection or not.
  final pulumi.Input<bool>? suspended;

  /// Creates a new [ConnectionArgs].
  /// [authConfig] Optional. Configuration for establishing the connection's authentication with an external system.
  /// [configVariables] Optional. Configuration for configuring the connection with an external system.
  /// [connectionId] Required. Identifier to assign to the Connection. Must be unique within scope of the parent resource.
  /// [connectorVersion] Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  /// [description] Optional. Description of the resource.
  /// [destinationConfigs] Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  /// [eventingConfig] Optional. Eventing config of a connection
  /// [eventingEnablementType] Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [location] Optional.
  /// [lockConfig] Optional. Configuration that indicates whether or not the Connection can be edited.
  /// [logConfig] Optional. Log configuration for the connection.
  /// [nodeConfig] Optional. Node configuration for the connection.
  /// [project] Optional.
  /// [serviceAccount] Optional. Service account needed for runtime plane to access Google Cloud resources.
  /// [sslConfig] Optional. Ssl config of a connection
  /// [suspended] Optional. Suspended indicates if a user has suspended a connection or not.
  ConnectionArgs({
    pulumi.Output<AuthConfig>? authConfig,
    pulumi.Output<List<ConfigVariable>>? configVariables,
    required pulumi.Output<String> connectionId,
    required pulumi.Output<String> connectorVersion,
    pulumi.Output<String>? description,
    pulumi.Output<List<DestinationConfig>>? destinationConfigs,
    pulumi.Output<EventingConfig>? eventingConfig,
    pulumi.Output<ConnectionEventingEnablementType>? eventingEnablementType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<LockConfig>? lockConfig,
    pulumi.Output<ConnectorsLogConfig>? logConfig,
    pulumi.Output<NodeConfig>? nodeConfig,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<SslConfig>? sslConfig,
    pulumi.Output<bool>? suspended,
  }) :
      authConfig = pulumi.Input.asOptionalInput<AuthConfig>(authConfig),
      configVariables = pulumi.Input.asOptionalInput<List<ConfigVariable>>(configVariables),
      connectionId = pulumi.Input.asInput<String>(connectionId),
      connectorVersion = pulumi.Input.asInput<String>(connectorVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationConfigs = pulumi.Input.asOptionalInput<List<DestinationConfig>>(destinationConfigs),
      eventingConfig = pulumi.Input.asOptionalInput<EventingConfig>(eventingConfig),
      eventingEnablementType = pulumi.Input.asOptionalInput<ConnectionEventingEnablementType>(eventingEnablementType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      lockConfig = pulumi.Input.asOptionalInput<LockConfig>(lockConfig),
      logConfig = pulumi.Input.asOptionalInput<ConnectorsLogConfig>(logConfig),
      nodeConfig = pulumi.Input.asOptionalInput<NodeConfig>(nodeConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      sslConfig = pulumi.Input.asOptionalInput<SslConfig>(sslConfig),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<AuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'configVariables': ?pulumi.Input.mapOptionalInputValue<List<ConfigVariable>, List<Map<String, dynamic>>>(configVariables, (value) => pulumi.Input.encodeList<ConfigVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionId': connectionId,
      'connectorVersion': connectorVersion,
      'description': ?description,
      'destinationConfigs': ?pulumi.Input.mapOptionalInputValue<List<DestinationConfig>, List<Map<String, dynamic>>>(destinationConfigs, (value) => pulumi.Input.encodeList<DestinationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventingConfig': ?pulumi.Input.mapOptionalInputValue<EventingConfig, Map<String, dynamic>>(eventingConfig, (value) => value.toMap()),
      'eventingEnablementType': ?pulumi.Input.mapOptionalInputValue<ConnectionEventingEnablementType, String>(eventingEnablementType, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'lockConfig': ?pulumi.Input.mapOptionalInputValue<LockConfig, Map<String, dynamic>>(lockConfig, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<ConnectorsLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<NodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<SslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
      'suspended': ?suspended,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<AuthConfig>(AuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      configVariables: map['configVariables'] == null ? null : pulumi.Output.create<List<ConfigVariable>>(pulumi.Input.decodeList<ConfigVariable>(map['configVariables'], (value) => ConfigVariable.fromMap((value as Map).cast<String, dynamic>()))),
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      connectorVersion: pulumi.Output.create<String>(map['connectorVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationConfigs: map['destinationConfigs'] == null ? null : pulumi.Output.create<List<DestinationConfig>>(pulumi.Input.decodeList<DestinationConfig>(map['destinationConfigs'], (value) => DestinationConfig.fromMap((value as Map).cast<String, dynamic>()))),
      eventingConfig: map['eventingConfig'] == null ? null : pulumi.Output.create<EventingConfig>(EventingConfig.fromMap((map['eventingConfig'] as Map).cast<String, dynamic>())),
      eventingEnablementType: map['eventingEnablementType'] == null ? null : pulumi.Output.create<ConnectionEventingEnablementType>(ConnectionEventingEnablementType.fromValue(map['eventingEnablementType'] as String)),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      lockConfig: map['lockConfig'] == null ? null : pulumi.Output.create<LockConfig>(LockConfig.fromMap((map['lockConfig'] as Map).cast<String, dynamic>())),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<ConnectorsLogConfig>(ConnectorsLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<NodeConfig>(NodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      sslConfig: map['sslConfig'] == null ? null : pulumi.Output.create<SslConfig>(SslConfig.fromMap((map['sslConfig'] as Map).cast<String, dynamic>())),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
    );
  }
}

