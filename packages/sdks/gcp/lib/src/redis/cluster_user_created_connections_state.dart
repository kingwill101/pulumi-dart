// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user_created_connections_cluster_endpoint.dart';

/// Input properties used for looking up and filtering ClusterUserCreatedConnections resources.
class ClusterUserCreatedConnectionsState {
  /// A list of cluster endpoints
  /// Structure is documented below.
  final pulumi.Input<List<ClusterUserCreatedConnectionsClusterEndpoint>>? clusterEndpoints;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name of the Redis cluster these endpoints should be added to.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the region of the Redis cluster these endpoints should be added to.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterUserCreatedConnectionsState].
  /// [clusterEndpoints] A list of cluster endpoints
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The name of the Redis cluster these endpoints should be added to.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The name of the region of the Redis cluster these endpoints should be added to.
  const ClusterUserCreatedConnectionsState({
    this.clusterEndpoints,
    this.deletionPolicy,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ClusterUserCreatedConnectionsClusterEndpoint>, List<Map<String, dynamic>>>(clusterEndpoints, (value) => pulumi.Input.encodeList<ClusterUserCreatedConnectionsClusterEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory ClusterUserCreatedConnectionsState.fromMap(Map<String, dynamic> map) {
    return ClusterUserCreatedConnectionsState(
      clusterEndpoints: (() { final guardedValue = map['clusterEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterUserCreatedConnectionsClusterEndpoint>(guardedValue, (value) => ClusterUserCreatedConnectionsClusterEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
