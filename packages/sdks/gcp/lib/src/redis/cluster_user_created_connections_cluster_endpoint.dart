// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user_created_connections_cluster_endpoint_connection.dart';

class ClusterUserCreatedConnectionsClusterEndpoint {
  /// Structure is documented below.
  final pulumi.Input<
    List<ClusterUserCreatedConnectionsClusterEndpointConnection>
  >?
  connections;

  /// Creates a new [ClusterUserCreatedConnectionsClusterEndpoint].
  /// [connections] Structure is documented below.
  ClusterUserCreatedConnectionsClusterEndpoint({this.connections});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterUserCreatedConnectionsClusterEndpointConnection>,
            List<Map<String, dynamic>>
          >(
            connections,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterUserCreatedConnectionsClusterEndpointConnection,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterUserCreatedConnectionsClusterEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterUserCreatedConnectionsClusterEndpoint(
      connections: (() {
        final guardedValue = map['connections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ClusterUserCreatedConnectionsClusterEndpointConnection
          >(
            guardedValue,
            (value) =>
                ClusterUserCreatedConnectionsClusterEndpointConnection.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
