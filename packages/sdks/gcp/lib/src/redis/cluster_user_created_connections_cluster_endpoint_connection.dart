// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_user_created_connections_cluster_endpoint_connection_psc_connection.dart';

class ClusterUserCreatedConnectionsClusterEndpointConnection {
  /// Detailed information of a PSC connection that is created by the customer
  /// who owns the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection?>? pscConnection;

  /// Creates a new [ClusterUserCreatedConnectionsClusterEndpointConnection].
  /// [pscConnection] Detailed information of a PSC connection that is created by the customer
  const ClusterUserCreatedConnectionsClusterEndpointConnection({
    this.pscConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscConnection': ?pulumi.Input.mapOptionalInputValue<ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection, Map<String, dynamic>>(pscConnection, (value) => value.toMap()),
    };
  }

  factory ClusterUserCreatedConnectionsClusterEndpointConnection.fromMap(Map<String, dynamic> map) {
    return ClusterUserCreatedConnectionsClusterEndpointConnection(
      pscConnection: (() { final guardedValue = map['pscConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
