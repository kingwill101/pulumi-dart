// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_task_restart_policy.dart';

/// {@template pulumi_managedkafka_connector_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_managedkafka_connector_connector_args_doc}
class ConnectorArgs {
  /// Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  final pulumi.Input<Map<String, String>?>? configs;
  /// The connect cluster name.
  final pulumi.Input<String> connectCluster;
  /// The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  final pulumi.Input<String> connectorId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  /// Structure is documented below.
  final pulumi.Input<ConnectorTaskRestartPolicy?>? taskRestartPolicy;

  /// Creates a new [ConnectorArgs].
  /// [configs] Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  /// [connectCluster] The connect cluster name.
  /// [connectorId] The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [project] The ID of the project in which the resource belongs.
  /// [taskRestartPolicy] A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  const ConnectorArgs({
    this.configs,
    required this.connectCluster,
    required this.connectorId,
    this.deletionPolicy,
    required this.location,
    this.project,
    this.taskRestartPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?configs,
      'connectCluster': connectCluster,
      'connectorId': connectorId,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
      'taskRestartPolicy': ?pulumi.Input.mapOptionalInputValue<ConnectorTaskRestartPolicy, Map<String, dynamic>>(taskRestartPolicy, (value) => value.toMap()),
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      connectCluster: pulumi.Input.fromValue(map['connectCluster'] as String),
      connectorId: pulumi.Input.fromValue(map['connectorId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskRestartPolicy: (() { final guardedValue = map['taskRestartPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorTaskRestartPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
