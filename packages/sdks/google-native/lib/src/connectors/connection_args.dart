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
    this.authConfig,
    this.configVariables,
    required this.connectionId,
    required this.connectorVersion,
    this.description,
    this.destinationConfigs,
    this.eventingConfig,
    this.eventingEnablementType,
    this.labels,
    this.location,
    this.lockConfig,
    this.logConfig,
    this.nodeConfig,
    this.project,
    this.serviceAccount,
    this.sslConfig,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig':
          ?pulumi.Input.mapOptionalInputValue<AuthConfig, Map<String, dynamic>>(
            authConfig,
            (value) => value.toMap(),
          ),
      'configVariables':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConfigVariable>,
            List<Map<String, dynamic>>
          >(
            configVariables,
            (value) =>
                pulumi.Input.encodeList<ConfigVariable, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'connectionId': connectionId,
      'connectorVersion': connectorVersion,
      'description': ?description,
      'destinationConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<DestinationConfig>,
            List<Map<String, dynamic>>
          >(
            destinationConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  DestinationConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eventingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EventingConfig,
            Map<String, dynamic>
          >(eventingConfig, (value) => value.toMap()),
      'eventingEnablementType':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionEventingEnablementType,
            String
          >(eventingEnablementType, (value) => value.wireValue),
      'labels': ?labels,
      'location': ?location,
      'lockConfig':
          ?pulumi.Input.mapOptionalInputValue<LockConfig, Map<String, dynamic>>(
            lockConfig,
            (value) => value.toMap(),
          ),
      'logConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectorsLogConfig,
            Map<String, dynamic>
          >(logConfig, (value) => value.toMap()),
      'nodeConfig':
          ?pulumi.Input.mapOptionalInputValue<NodeConfig, Map<String, dynamic>>(
            nodeConfig,
            (value) => value.toMap(),
          ),
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'sslConfig':
          ?pulumi.Input.mapOptionalInputValue<SslConfig, Map<String, dynamic>>(
            sslConfig,
            (value) => value.toMap(),
          ),
      'suspended': ?suspended,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      authConfig: (() {
        final guardedValue = map['authConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      configVariables: (() {
        final guardedValue = map['configVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConfigVariable>(
            guardedValue,
            (value) =>
                ConfigVariable.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      connectorVersion: pulumi.Input.fromValue(
        map['connectorVersion'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationConfigs: (() {
        final guardedValue = map['destinationConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DestinationConfig>(
            guardedValue,
            (value) => DestinationConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      eventingConfig: (() {
        final guardedValue = map['eventingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      eventingEnablementType: (() {
        final guardedValue = map['eventingEnablementType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionEventingEnablementType.fromValue(guardedValue as String),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lockConfig: (() {
        final guardedValue = map['lockConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LockConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      logConfig: (() {
        final guardedValue = map['logConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectorsLogConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nodeConfig: (() {
        final guardedValue = map['nodeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslConfig: (() {
        final guardedValue = map['sslConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SslConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      suspended: (() {
        final guardedValue = map['suspended'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
