// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config.dart';
import 'connection_config_variable.dart';
import 'connection_destination_config.dart';
import 'connection_eventing_config.dart';
import 'connection_lock_config.dart';
import 'connection_log_config.dart';
import 'connection_node_config.dart';
import 'connection_ssl_config.dart';

/// {@template pulumi_integrationconnectors_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_integrationconnectors_connection_connection_args_doc}
class ConnectionArgs {
  /// authConfig for the connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfig>? authConfig;
  /// Config Variables for the connection.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionConfigVariable>>? configVariables;
  /// connectorVersion of the Connector.
  final pulumi.Input<String> connectorVersion;
  /// An arbitrary description for the Connection.
  final pulumi.Input<String>? description;
  /// Define the Connectors target endpoint.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionDestinationConfig>>? destinationConfigs;
  /// Eventing Configuration of a connection
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfig>? eventingConfig;
  /// Eventing enablement type. Will be nil if eventing is not enabled.
  /// Possible values are: `EVENTING_AND_CONNECTION`, `ONLY_EVENTING`.
  final pulumi.Input<String>? eventingEnablementType;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location in which Connection needs to be created.
  final pulumi.Input<String> location;
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
  /// Service account needed for runtime plane to access Google Cloud resources.
  final pulumi.Input<String>? serviceAccount;
  /// SSL Configuration of a connection
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfig>? sslConfig;
  /// Suspended indicates if a user has suspended a connection or not.
  final pulumi.Input<bool>? suspended;

  /// Creates a new [ConnectionArgs].
  /// [authConfig] authConfig for the connection.
  /// [configVariables] Config Variables for the connection.
  /// [connectorVersion] connectorVersion of the Connector.
  /// [description] An arbitrary description for the Connection.
  /// [destinationConfigs] Define the Connectors target endpoint.
  /// [eventingConfig] Eventing Configuration of a connection
  /// [eventingEnablementType] Eventing enablement type. Will be nil if eventing is not enabled.
  /// [labels] Resource labels to represent user provided metadata.
  /// [location] Location in which Connection needs to be created.
  /// [lockConfig] Determines whether or no a connection is locked. If locked, a reason must be specified.
  /// [logConfig] Log configuration for the connection.
  /// [name] Name of Connection needs to be created.
  /// [nodeConfig] Node configuration for the connection.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAccount] Service account needed for runtime plane to access Google Cloud resources.
  /// [sslConfig] SSL Configuration of a connection
  /// [suspended] Suspended indicates if a user has suspended a connection or not.
  ConnectionArgs({
    pulumi.Output<ConnectionAuthConfig>? authConfig,
    pulumi.Output<List<ConnectionConfigVariable>>? configVariables,
    required pulumi.Output<String> connectorVersion,
    pulumi.Output<String>? description,
    pulumi.Output<List<ConnectionDestinationConfig>>? destinationConfigs,
    pulumi.Output<ConnectionEventingConfig>? eventingConfig,
    pulumi.Output<String>? eventingEnablementType,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<ConnectionLockConfig>? lockConfig,
    pulumi.Output<ConnectionLogConfig>? logConfig,
    pulumi.Output<String>? name,
    pulumi.Output<ConnectionNodeConfig>? nodeConfig,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<ConnectionSslConfig>? sslConfig,
    pulumi.Output<bool>? suspended,
  }) :
      authConfig = pulumi.Input.asOptionalInput<ConnectionAuthConfig>(authConfig),
      configVariables = pulumi.Input.asOptionalInput<List<ConnectionConfigVariable>>(configVariables),
      connectorVersion = pulumi.Input.asInput<String>(connectorVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationConfigs = pulumi.Input.asOptionalInput<List<ConnectionDestinationConfig>>(destinationConfigs),
      eventingConfig = pulumi.Input.asOptionalInput<ConnectionEventingConfig>(eventingConfig),
      eventingEnablementType = pulumi.Input.asOptionalInput<String>(eventingEnablementType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      lockConfig = pulumi.Input.asOptionalInput<ConnectionLockConfig>(lockConfig),
      logConfig = pulumi.Input.asOptionalInput<ConnectionLogConfig>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeConfig = pulumi.Input.asOptionalInput<ConnectionNodeConfig>(nodeConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      sslConfig = pulumi.Input.asOptionalInput<ConnectionSslConfig>(sslConfig),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'configVariables': ?pulumi.Input.mapOptionalInputValue<List<ConnectionConfigVariable>, List<Map<String, dynamic>>>(configVariables, (value) => pulumi.Input.encodeList<ConnectionConfigVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectorVersion': connectorVersion,
      'description': ?description,
      'destinationConfigs': ?pulumi.Input.mapOptionalInputValue<List<ConnectionDestinationConfig>, List<Map<String, dynamic>>>(destinationConfigs, (value) => pulumi.Input.encodeList<ConnectionDestinationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventingConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionEventingConfig, Map<String, dynamic>>(eventingConfig, (value) => value.toMap()),
      'eventingEnablementType': ?eventingEnablementType,
      'labels': ?labels,
      'location': location,
      'lockConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionLockConfig, Map<String, dynamic>>(lockConfig, (value) => value.toMap()),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionSslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
      'suspended': ?suspended,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<ConnectionAuthConfig>(ConnectionAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      configVariables: map['configVariables'] == null ? null : pulumi.Output.create<List<ConnectionConfigVariable>>(pulumi.Input.decodeList<ConnectionConfigVariable>(map['configVariables'], (value) => ConnectionConfigVariable.fromMap((value as Map).cast<String, dynamic>()))),
      connectorVersion: pulumi.Output.create<String>(map['connectorVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationConfigs: map['destinationConfigs'] == null ? null : pulumi.Output.create<List<ConnectionDestinationConfig>>(pulumi.Input.decodeList<ConnectionDestinationConfig>(map['destinationConfigs'], (value) => ConnectionDestinationConfig.fromMap((value as Map).cast<String, dynamic>()))),
      eventingConfig: map['eventingConfig'] == null ? null : pulumi.Output.create<ConnectionEventingConfig>(ConnectionEventingConfig.fromMap((map['eventingConfig'] as Map).cast<String, dynamic>())),
      eventingEnablementType: map['eventingEnablementType'] == null ? null : pulumi.Output.create<String>(map['eventingEnablementType'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      lockConfig: map['lockConfig'] == null ? null : pulumi.Output.create<ConnectionLockConfig>(ConnectionLockConfig.fromMap((map['lockConfig'] as Map).cast<String, dynamic>())),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<ConnectionLogConfig>(ConnectionLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<ConnectionNodeConfig>(ConnectionNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      sslConfig: map['sslConfig'] == null ? null : pulumi.Output.create<ConnectionSslConfig>(ConnectionSslConfig.fromMap((map['sslConfig'] as Map).cast<String, dynamic>())),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
    );
  }
}

