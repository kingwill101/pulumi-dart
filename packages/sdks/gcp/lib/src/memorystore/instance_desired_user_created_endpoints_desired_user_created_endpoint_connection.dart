// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_user_created_endpoints_desired_user_created_endpoint_connection_psc_connection.dart';

class InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection {
  /// Detailed information of a PSC connection that is created by the customer
  /// who owns the cluster.
  /// Structure is documented below.
  final pulumi.Input<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection>? pscConnection;

  /// Creates a new [InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection].
  /// [pscConnection] Detailed information of a PSC connection that is created by the customer
  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection({
    this.pscConnection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscConnection': ?pulumi.Input.mapOptionalInputValue<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection, Map<String, dynamic>>(pscConnection, (value) => value.toMap()),
    };
  }

  factory InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection(
      pscConnection: map['pscConnection'] == null ? null : (InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnectionPscConnection.fromMap((map['pscConnection'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

