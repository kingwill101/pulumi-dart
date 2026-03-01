// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_user_created_endpoints_desired_user_created_endpoint_connection.dart';

class InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint {
  /// Structure is documented below.
  final List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection>? connections;

  /// Creates a new [InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint].
  /// [connections] Structure is documented below.
  InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint({
    this.connections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?connections == null ? null : pulumi.Input.encodeList<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection, Map<String, dynamic>>(connections!, (value) => value.toMap()),
    };
  }

  factory InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint.fromMap(Map<String, dynamic> map) {
    return InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint(
      connections: map['connections'] == null ? null : pulumi.Input.decodeList<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection>(map['connections'], (value) => InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpointConnection.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

