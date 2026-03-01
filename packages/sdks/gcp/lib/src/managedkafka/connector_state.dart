// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_task_restart_policy.dart';

/// Input properties used for looking up and filtering Connector resources.
class ConnectorState {
  /// Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  final pulumi.Input<Map<String, String>>? configs;
  /// The connect cluster name.
  final pulumi.Input<String>? connectCluster;
  /// The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  final pulumi.Input<String>? connectorId;
  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String>? location;
  /// The name of the connector. The `connector` segment is used when connecting directly to the connect cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER/connectors/CONNECTOR_ID`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The current state of the connect. Possible values: `STATE_UNSPECIFIED`, `UNASSIGNED`, `RUNNING`, `PAUSED`, `FAILED`, `RESTARTING`, and `STOPPED`.
  final pulumi.Input<String>? state;
  /// A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  /// Structure is documented below.
  final pulumi.Input<ConnectorTaskRestartPolicy>? taskRestartPolicy;

  /// Creates a new [ConnectorState].
  /// [configs] Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  /// [connectCluster] The connect cluster name.
  /// [connectorId] The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  /// [location] ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [name] The name of the connector. The `connector` segment is used when connecting directly to the connect cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER/connectors/CONNECTOR_ID`.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The current state of the connect. Possible values: `STATE_UNSPECIFIED`, `UNASSIGNED`, `RUNNING`, `PAUSED`, `FAILED`, `RESTARTING`, and `STOPPED`.
  /// [taskRestartPolicy] A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  ConnectorState({
    pulumi.Output<Map<String, String>>? configs,
    pulumi.Output<String>? connectCluster,
    pulumi.Output<String>? connectorId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
    pulumi.Output<ConnectorTaskRestartPolicy>? taskRestartPolicy,
  }) :
      configs = pulumi.Input.asOptionalInput<Map<String, String>>(configs),
      connectCluster = pulumi.Input.asOptionalInput<String>(connectCluster),
      connectorId = pulumi.Input.asOptionalInput<String>(connectorId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state),
      taskRestartPolicy = pulumi.Input.asOptionalInput<ConnectorTaskRestartPolicy>(taskRestartPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?configs,
      'connectCluster': ?connectCluster,
      'connectorId': ?connectorId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'taskRestartPolicy': ?pulumi.Input.mapOptionalInputValue<ConnectorTaskRestartPolicy, Map<String, dynamic>>(taskRestartPolicy, (value) => value.toMap()),
    };
  }

  factory ConnectorState.fromMap(Map<String, dynamic> map) {
    return ConnectorState(
      configs: map['configs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['configs'] as Map).cast<String, String>()),
      connectCluster: map['connectCluster'] == null ? null : pulumi.Output.create<String>(map['connectCluster'] as String),
      connectorId: map['connectorId'] == null ? null : pulumi.Output.create<String>(map['connectorId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      taskRestartPolicy: map['taskRestartPolicy'] == null ? null : pulumi.Output.create<ConnectorTaskRestartPolicy>(ConnectorTaskRestartPolicy.fromMap((map['taskRestartPolicy'] as Map).cast<String, dynamic>())),
    );
  }
}

