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
  final pulumi.Input<ConnectionAuthConfig?>? authConfig;
  /// Config Variables for the connection.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionConfigVariable>?>? configVariables;
  /// connectorVersion of the Connector.
  final pulumi.Input<String> connectorVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An arbitrary description for the Connection.
  final pulumi.Input<String?>? description;
  /// Define the Connectors target endpoint.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionDestinationConfig>?>? destinationConfigs;
  /// Eventing Configuration of a connection
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfig?>? eventingConfig;
  /// Eventing enablement type. Will be nil if eventing is not enabled.
  /// Possible values are: `EVENTING_AND_CONNECTION`, `ONLY_EVENTING`.
  final pulumi.Input<String?>? eventingEnablementType;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Location in which Connection needs to be created.
  final pulumi.Input<String> location;
  /// Determines whether or no a connection is locked. If locked, a reason must be specified.
  /// Structure is documented below.
  final pulumi.Input<ConnectionLockConfig?>? lockConfig;
  /// Log configuration for the connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionLogConfig?>? logConfig;
  /// Name of Connection needs to be created.
  final pulumi.Input<String?>? name;
  /// Node configuration for the connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionNodeConfig?>? nodeConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Service account needed for runtime plane to access Google Cloud resources.
  final pulumi.Input<String?>? serviceAccount;
  /// SSL Configuration of a connection
  /// Structure is documented below.
  final pulumi.Input<ConnectionSslConfig?>? sslConfig;
  /// Suspended indicates if a user has suspended a connection or not.
  final pulumi.Input<bool?>? suspended;

  /// Creates a new [ConnectionArgs].
  /// [authConfig] authConfig for the connection.
  /// [configVariables] Config Variables for the connection.
  /// [connectorVersion] connectorVersion of the Connector.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const ConnectionArgs({
    this.authConfig,
    this.configVariables,
    required this.connectorVersion,
    this.deletionPolicy,
    this.description,
    this.destinationConfigs,
    this.eventingConfig,
    this.eventingEnablementType,
    this.labels,
    required this.location,
    this.lockConfig,
    this.logConfig,
    this.name,
    this.nodeConfig,
    this.project,
    this.serviceAccount,
    this.sslConfig,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'configVariables': ?pulumi.Input.mapOptionalInputValue<List<ConnectionConfigVariable>, List<Map<String, dynamic>>>(configVariables, (value) => pulumi.Input.encodeList<ConnectionConfigVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectorVersion': connectorVersion,
      'deletionPolicy': ?deletionPolicy,
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
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configVariables: (() { final guardedValue = map['configVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionConfigVariable>(guardedValue, (value) => ConnectionConfigVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      connectorVersion: pulumi.Input.fromValue(map['connectorVersion'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationConfigs: (() { final guardedValue = map['destinationConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionDestinationConfig>(guardedValue, (value) => ConnectionDestinationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventingConfig: (() { final guardedValue = map['eventingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionEventingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventingEnablementType: (() { final guardedValue = map['eventingEnablementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      lockConfig: (() { final guardedValue = map['lockConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionLockConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionSslConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
