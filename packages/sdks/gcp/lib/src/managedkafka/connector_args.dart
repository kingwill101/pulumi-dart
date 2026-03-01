// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_task_restart_policy.dart';

/// {@template pulumi_managedkafka_connector_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_managedkafka_connector_connector_args_doc}
class ConnectorArgs {
  /// Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  final pulumi.Input<Map<String, String>>? configs;
  /// The connect cluster name.
  final pulumi.Input<String> connectCluster;
  /// The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  final pulumi.Input<String> connectorId;
  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  /// Structure is documented below.
  final pulumi.Input<ConnectorTaskRestartPolicy>? taskRestartPolicy;

  /// Creates a new [ConnectorArgs].
  /// [configs] Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  /// [connectCluster] The connect cluster name.
  /// [connectorId] The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  /// [location] ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [project] The ID of the project in which the resource belongs.
  /// [taskRestartPolicy] A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  ConnectorArgs({
    pulumi.Output<Map<String, String>>? configs,
    required pulumi.Output<String> connectCluster,
    required pulumi.Output<String> connectorId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<ConnectorTaskRestartPolicy>? taskRestartPolicy,
  }) :
      configs = pulumi.Input.asOptionalInput<Map<String, String>>(configs),
      connectCluster = pulumi.Input.asInput<String>(connectCluster),
      connectorId = pulumi.Input.asInput<String>(connectorId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      taskRestartPolicy = pulumi.Input.asOptionalInput<ConnectorTaskRestartPolicy>(taskRestartPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?configs,
      'connectCluster': connectCluster,
      'connectorId': connectorId,
      'location': location,
      'project': ?project,
      'taskRestartPolicy': ?pulumi.Input.mapOptionalInputValue<ConnectorTaskRestartPolicy, Map<String, dynamic>>(taskRestartPolicy, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      configs: map['configs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['configs'] as Map).cast<String, String>()),
      connectCluster: pulumi.Output.create<String>(map['connectCluster'] as String),
      connectorId: pulumi.Output.create<String>(map['connectorId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      taskRestartPolicy: map['taskRestartPolicy'] == null ? null : pulumi.Output.create<ConnectorTaskRestartPolicy>(ConnectorTaskRestartPolicy.fromMap((map['taskRestartPolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

